from __future__ import unicode_literals
from django.db import models
from django.contrib import admin
from tinymce import HTMLField
from django.contrib.auth.models import User

# Create your models here.

class UserProfile(models.Model):
	user = models.ForeignKey(User, on_delete=models.CASCADE)
	mobile = models.CharField(max_length=13)
	state = models.CharField(max_length=50, null=True, blank=True)
	city = models.CharField(max_length=50, null=True, blank=True)
	country = models.CharField(max_length=50, null=True, blank=True)
	address = models.TextField(null=True, blank=True)
	postcode = models.IntegerField(default=0)
	created_on = models.DateTimeField(auto_now=True)
	modified_on = models.DateTimeField(auto_now=True)

	def __unicode__(self):
		return self.user.first_name


class Enquiryform(models.Model):
	first_name = models.CharField(max_length=255)
	parent_name = models.CharField(max_length=255)
	# gender = models.CharField(max_length=255)
	mobile = models.CharField(max_length=15)
	admission = models.CharField(max_length=255)
	email = models.EmailField(max_length=900)
	message = models.TextField()

	def __str__(self):
		return self.first_name

class Pages(models.Model):
	title = models.CharField(max_length=255)
	slug = models.SlugField(max_length=900, null=True ,blank=True)
	content = HTMLField('Content')
	meta_description = models.TextField(null=True,blank=True)
	keywords = models.TextField(null=True,blank=True)
	created_by = models.ForeignKey(User,null=True,blank=True, on_delete=models.CASCADE)
	punlished_on = models.DateTimeField(null=True,blank=True)
	created_on = models.DateTimeField(auto_now=True)
	modified_on = models.DateTimeField(auto_now=True)

	def __str__(self):
		return self.title

class LastestNew(models.Model):
	title = models.CharField(max_length=255)
	slug = models.SlugField(max_length=900, null=True ,blank=True)
	content = HTMLField('Content')
	excerpt = models.TextField(null=True,blank=True)
	meta_description = models.TextField(null=True,blank=True)
	keywords = models.TextField(null=True,blank=True)
	created_by = models.ForeignKey(User,null=True,blank=True, on_delete=models.CASCADE)
	published_on = models.DateTimeField(null=True,blank=True)
	created_on = models.DateTimeField(auto_now=True)
	modified_on = models.DateTimeField(auto_now=True)


	def __str__(self):
		return self.title
		
class JobOpening(models.Model):
	job_title = models.CharField(max_length=255)
	slug = models.SlugField(max_length=900, null=True, blank=True)
	qualification = models.CharField(max_length=255)
	job_description = models.TextField(null=True, blank=True)
	job_duties = models.TextField(null=True, blank=True)
	desired_profile = models.TextField(null=True, blank=True)
	experience_qualification = models.TextField(null=True, blank=True)
	salary_range = models.CharField(max_length=255, null=True, blank=True)
	location = models.CharField(max_length=255, null=True, blank=True)
	no_of_position = models.IntegerField(default=0)
	meta_description = models.TextField(null=True,blank=True)
	keywords = models.TextField(null=True,blank=True)
	created_by = models.ForeignKey(User,null=True,blank=True, on_delete=models.CASCADE)
	published_on = models.DateTimeField(null=True, blank=True)
	created_on = models.DateTimeField(auto_now=True)
	modified_on = models.DateTimeField(auto_now=True)

	def __str__(self):
		return self.job_title


class JobApplicationForm(models.Model):
	job_title = models.ForeignKey(JobOpening, on_delete=models.CASCADE)
	first_name = models.CharField(max_length=255)
	last_name = models.CharField(max_length=255, null=True, blank=True)
	email = models.EmailField()
	phone = models.CharField(max_length=13)
	description = models.TextField(null=True, blank=True)
	resume = models.FileField(upload_to='uploaded_files')
	created_on = models.DateTimeField(auto_now=True)

	def __str__(self):
		return self.first_name


class Testimonial(models.Model):
	title = models.CharField(max_length=255)
	slug = models.SlugField(max_length=900, null=True ,blank=True)
	content = HTMLField('Content')
	meta_description = models.TextField(null=True,blank=True)
	keywords = models.TextField(null=True,blank=True)
	created_by = models.ForeignKey(User,null=True,blank=True, on_delete=models.CASCADE)
	punlished_on = models.DateTimeField(null=True,blank=True)
	created_on = models.DateTimeField(auto_now=True)
	modified_on = models.DateTimeField(auto_now=True)
	

	def __str__(self):
		return self.title