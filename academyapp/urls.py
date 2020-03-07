from django.conf.urls import url, include
from .import views
from django.conf import settings
# from academyapp.models import Enquiryform

app_name = 'academyapp'

urlpatterns=[
	url(r'^$',views.homeview, name='homeview'),
	url(r'^careers/$',views.careers, name='careers'),	
	url(r'^contact-us/$',views.contactview, name='contact'),
	url(r'^testimonial/$', views.testimonial, name="testimonial"),
	url(r'^job-application/$', views.job_application_form, name="job-application"),
	url(r'^login/$', views.login, name='login'),
	url(r'^register/$', views.register, name='register'),
	url(r'^logout/$',views.logout_view, name='logout_view'),
	url(r'^add-page/$',views.add_page, name='add_page'),
	url(r'^list-page/$',views.list_page, name='list_page'),
	url(r'^edit-page/(?P<id>[0-9]+)/$',views.edit_page, name='edit_page'),
	url(r'^add-news/$',views.add_news, name='add_news'),
	url(r'^list-news/$',views.list_news, name='list_news'),
	url(r'^edit-news/(?P<id>[0-9]+)/$',views.edit_news, name='edit_news'),
	url(r'^add-jobs/$',views.create_job, name='create_job'),
	url(r'^list-jobs/$',views.jobs_list, name='jobs_list'),
	url(r'^edit-jobs/(?P<id>[0-9]+)/$',views.job_edit, name='job_edit'),
	url(r'^create-testinomial/$',views.create_test, name='create_test'),
	url(r'^testinomial-list/$',views.test_list, name='test_list'),
	url(r'^testinomial-edit/(?P<id>[0-9]+)/$',views.test_edit, name='test_edit'),
	url(r'^academics/$', views.academicView, name='academics'),
	url(r'^beyond-academics/$', views.beyondacademicView, name='beyondacademic'),
	url(r'^admission/$', views.admission, name='admission'),
	url(r'^lastest-new/(?P<slug>[\w-]+)/$',views.pagedisplay, name='pagedisplay'),
	url(r'^(?P<slug>[\w-]+)/$',views.pagesview, name='pagesview'),
]