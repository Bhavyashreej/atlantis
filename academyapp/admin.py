from django.contrib import admin
from academyapp.models import Enquiryform,Pages,LastestNew,JobOpening,JobApplicationForm,Testimonial,UserProfile

# Register your models here.
admin.site.register(UserProfile)
admin.site.register(Enquiryform)
admin.site.register(Pages)
admin.site.register(LastestNew)
admin.site.register(Testimonial)
admin.site.register(JobOpening)
admin.site.register(JobApplicationForm)