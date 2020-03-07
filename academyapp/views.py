from __future__ import unicode_literals
from django.shortcuts import render
from django.http import HttpResponseRedirect, HttpResponse, JsonResponse
from django.shortcuts import render, get_object_or_404
from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from academyapp.models import Enquiryform,Pages,LastestNew,JobOpening,JobApplicationForm,Testimonial,UserProfile
from academyapp.forms import PageForm,LastestNewForm,JobForm,TestinomialForm
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth import login as auth_login
import datetime
from django.template import loader
from academy.settings import BASE_DIR
from django.core.mail import send_mail, send_mass_mail
from django.conf import settings
import os.path

# Create your views here.

def homeview(request):
	lastest = LastestNew.objects.order_by('-id')
	if request.method == "POST":		
		details_form = Enquiryform.objects.create(
			first_name = request.POST["first_name"],
			parent_name = request.POST["parent_name"],
			mobile = request.POST["mobile"],
			email = request.POST["email_name"],
			admission = request.POST["admission"],
			message = request.POST["message"],
			)
		details_form.save()
		return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
	return render(request, 'index.html', locals())

def careers(request):
	job_detail = JobOpening.objects.all()
	job_list = JobOpening.objects.all()
	return render(request, 'careers.html', locals())

def contactview(request):
	if request.method == "POST":		
		details_form = Enquiryform.objects.create(
			first_name = request.POST["first_name"],
			parent_name = request.POST["parent_name"],
			mobile = request.POST["mobile"],
			email = request.POST["email_name"],
			admission = request.POST["admission"],
			message = request.POST["message"],
			)
		details_form.save()
		return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
	return render(request, 'contact.html', locals())


def academicView(request):
	return render(request,'academic.html', locals())

def beyondacademicView(request):
	return render(request,'beyond-academics.html', locals())


def admission(request):
	return render(request,'admission.html', locals())


def pagesview(request, slug):
	page_play = Pages.objects.get(slug=slug)
	return render(request,'page-display.html', locals())

	
def pagedisplay(request,slug):
	lastest = LastestNew.objects.get(slug=slug)
	return render(request,'lastestnews.html', locals())

def testimonial(request):
	test = Testimonial.objects.all()
	return render(request,'testimonial.html', locals())


def job_application_form(request):
	t = datetime.datetime.now()
	tt = t.date()
	if request.method == 'POST':
		try:
			if request.FILES['resume']:
				im = request.FILES['resume'].name
				ext = os.path.splitext(im)[1]
				ext_c = '/uploaded_files/r_000' + str(tt) + ext
				c = request.FILES.get('resume')
				path = settings.MEDIA_ROOT+'/'+ext_c
				destination = open(path, 'wb+')
				for chunk in c.chunks():
					destination.write(chunk)
				destination.close()
		except:
			ext_c = None
		j = JobApplicationForm.objects.create(
			job_title_id = request.POST['job_title'],
			first_name = request.POST['first_name'],
			last_name = request.POST['last_name'],
			email = request.POST['email'],
			phone = request.POST['phone'],
			description = request.POST['description'],
			resume = ext_c,
		)
		j.save()

		# to_ = ['careers@school.in']

		# subject, from_email, to = 'Job Application from Altantis the World School', 'Altantis the World School <contact@schoolprop.com>', to_
		# html_message = loader.render_to_string(BASE_DIR+'/templates/job_application_email.html',{'j':j})
		# message = ''

		# send_mail(subject,message, from_email, to_ ,fail_silently=False, html_message=html_message)
	return HttpResponseRedirect(request.META.get('HTTP_REFERER'))


def login(request):
	if request.method == "POST":
		username = request.POST['username']
		password = request.POST['password']
		user = authenticate(request, username=username, password=password)
		if user is not None:
			auth_login(request, user)
			return HttpResponseRedirect('/')
		else:
			msg = "Invalid Credentials"
	return render(request,'login.html', locals())


def register(request):
	if request.method == "POST":
		u = User.objects.create(
			first_name = request.POST['first_name'],
			last_name = request.POST['last_name'],
			email = request.POST['email'],
			username = request.POST['email']
			)
		u.set_password(request.POST['password'])
		u.is_active = True
		u.save()
		user_profile = UserProfile.objects.create(
			user_id = u.id,
			mobile = request.POST['mobile'],
			state = request.POST['state'],
			city = request.POST['city'],
			country = request.POST['country'],
			address = request.POST['address'],
			postcode = request.POST['postcode'],
			)
		user_profile.save()
		return HttpResponseRedirect("/login/")
	return render(request,'register.html', locals())


def logout_view(request):
	logout(request)
	return HttpResponseRedirect('/')


def add_page(request):
	page_form = PageForm()
	if request.method == "POST":
		page_form = PageForm(request.POST,request.FILES)
		if page_form.is_valid():
			page_obj = page_form.save(commit=False)
			page_obj.created_by_id = request.user.id
			page_obj.save()
			return HttpResponseRedirect('/list-page/')
		else:
			page_form = PageForm()
	return render(request,'addpage.html', locals())


def list_page(request):
	page_view = Pages.objects.all()
	paginator = Paginator(page_view, 10)
	page = request.GET.get('page')

	try:
		page_view = paginator.page(page)
	except PageNotAnInteger:
		page_view = paginator.page(1)
	except EmptyPage:
		page_view = paginator.page(paginator.num_pages)

	return render(request,'listpage.html', locals())


def edit_page(request,id):
	page_instance = get_object_or_404(Pages, id=id)
	page_form = PageForm(instance=page_instance)
	if request.method == "POST":
		page_form = PageForm(request.POST,request.FILES)
		if page_form.is_valid():
			page_form.save()
			return HttpResponseRedirect('/list-page/')
		else:
			page_form = PageForm(instance=page_instance)
	return render(request,'editpage.html', locals())


def add_news(request):
	last_new = LastestNewForm()
	if request.method == "POST":
		last_new = LastestNewForm(request.POST,request.FILES)
		if last_new.is_valid():
			last_obj = last_new.save(commit=False)
			last_obj.created_by_id = request.user.id
			last_obj.save()
			return HttpResponseRedirect('/list-news/')
		else:
			last_new = LastestNewForm()
	return render(request,'addnews.html', locals())


def list_news(request):
	list_view = LastestNew.objects.all()
	paginator = Paginator(list_view, 10)
	page = request.GET.get('page')

	try:
		list_view = paginator.page(page)
	except PageNotAnInteger:
		list_view = paginator.page(1)
	except EmptyPage:
		list_view = paginator.page(paginator.num_pages)

	return render(request,'listnews.html', locals())


def edit_news(request,id):
	news_instance = get_object_or_404(LastestNew,id=id)
	last_new = LastestNewForm(instance=news_instance)
	if request.method == "POST":
		last_new = LastestNewForm(request.POST,instance=news_instance)
		if last_new.is_valid():
		   last_new.save()
		   return HttpResponseRedirect('/list-news/')
		else:
		   last_new = LastestNewForm(instance=news_instance)
	return render(request,'editnews.html', locals())


def create_job(request):
	job_form = JobForm()
	if request.method == "POST":
		job_form = JobForm(request.POST)
		if job_form.is_valid():
			job_object = job_form.save(commit=False)
			job_object.created_by_id = request.user.id
			job_object.save()
			return HttpResponseRedirect("/list-jobs/")			
		else:
			job_form = JobForm()
	return render(request, 'create_job.html', locals())


def jobs_list(request):
	jobs = JobOpening.objects.all()
	paginator = Paginator(jobs, 10)
	page = request.GET.get('page')

	try:
		jobs = paginator.page(page)
	except PageNotAnInteger:
		jobs = paginator.page(1)
	except EmptyPage:
		jobs = paginator.page(paginator.num_pages)
	return render(request, 'job_list.html', locals())


def job_edit(request, id):
	job_instance = get_object_or_404(JobOpening, id=id)
	job_form = JobForm(instance=job_instance)
	if request.method == "POST":
		job_form = JobForm(request.POST, instance=job_instance)
		if job_form.is_valid():
			job_form.save()
			return HttpResponseRedirect("/list-jobs/")
		else:
			job_form = JobForm(instance=job_instance)
	return render(request, 'edit_job.html', locals())


def create_test(request):
	test_form = TestinomialForm()
	if request.method == "POST":
		test_form = TestinomialForm(request.POST)
		if test_form.is_valid():
			test_object = test_form.save(commit=False)
			test_object.created_by_id = request.user.id
			test_object.save()
			return HttpResponseRedirect("/testinomial-list/")			
		else:
			test_form = TestinomialForm()
	return render(request, 'create_testinomial.html', locals())


def test_list(request):
	test = Testimonial.objects.all()
	paginator = Paginator(test, 10)
	page = request.GET.get('page')

	try:
		test = paginator.page(page)
	except PageNotAnInteger:
		test = paginator.page(1)
	except EmptyPage:
		test = paginator.page(paginator.num_pages)
	return render(request, 'testinomial_list.html', locals())


def test_edit(request, id):
	test_instance = get_object_or_404(Testimonial, id=id)
	test_form = TestinomialForm(instance=test_instance)
	if request.method == "POST":
		test_form = TestinomialForm(request.POST, instance=test_instance)
		if test_form.is_valid():
			test_form.save()
			return HttpResponseRedirect("/testinomial-list/")
		else:
			test_form = TestinomialForm(instance=test_instance)
	return render(request, 'edit_testinomial.html', locals())
