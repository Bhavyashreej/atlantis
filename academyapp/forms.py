from django import forms
from academyapp.models import Pages, LastestNew, JobOpening, Testimonial
from tinymce import TinyMCE

class TinyMCEWidget(TinyMCE):
	def use_required_attribute(self, *args):
		return False


class PageForm(forms.ModelForm):
	def __init__(self, *args, **kwargs):
		super(PageForm, self).__init__(*args, **kwargs)
		for field in self.fields.values():
			field.widget.attrs = {"class": "form_control"}
		self.fields['title'].widget.attrs.update({'placeholder': 'Enter Title (*)'})
		self.fields['slug'].widget.attrs.update({'placeholder': 'Enter Slug (*)'})
		self.fields['meta_description'].widget.attrs.update({'placeholder': 'Enter Meta Description (*)'})
		self.fields['keywords'].widget.attrs.update({'placeholder': 'Enter Keywords (*)'})

	content = forms.CharField(
		widget=TinyMCEWidget(
			attrs={'required': False, 'cols': 30, 'rows': 10}
		)
	)
	class Meta:
		model = Pages
		fields = ['title','slug', 'meta_description', 'keywords', 'content']


class LastestNewForm(forms.ModelForm):
	def __init__(self, *args, **kwargs):
		super(LastestNewForm, self).__init__(*args, **kwargs)
		for field in self.fields.values():
			field.widget.attrs = {"class": "form_control"}
		self.fields['title'].widget.attrs.update({'placeholder': 'Enter Title (*)'})
		self.fields['slug'].widget.attrs.update({'placeholder': 'Enter Slug (*)'})
		self.fields['meta_description'].widget.attrs.update({'placeholder': 'Enter Meta Description (*)'})
		self.fields['keywords'].widget.attrs.update({'placeholder': 'Enter Keywords (*)'})

	content = forms.CharField(
		widget=TinyMCEWidget(
			attrs={'required': False, 'cols': 30, 'rows': 10}
		)
	)
	class Meta:
		model = LastestNew
		fields = ['title','slug', 'meta_description', 'keywords', 'content']


class JobForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(JobForm, self).__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs = {"class": "form-control"}
        self.fields['job_title'].widget.attrs.update({'placeholder': 'Enter Job Title (*)'})
        self.fields['slug'].widget.attrs.update({'placeholder': 'Enter Slug (*)'})
        self.fields['qualification'].widget.attrs.update({'placeholder': 'Enter Qualification (*)'})
        self.fields['job_description'].widget.attrs.update({'placeholder': 'Enter Description (*)'})
        self.fields['job_duties'].widget.attrs.update({'placeholder': 'Enter Duties'})
        self.fields['desired_profile'].widget.attrs.update({'placeholder': 'Enter Desired Profile'})
        self.fields['experience_qualification'].widget.attrs.update({'placeholder': 'Enter Experience Qualification'})
        self.fields['salary_range'].widget.attrs.update({'placeholder': 'Enter Salary Range'})
        self.fields['location'].widget.attrs.update({'placeholder': 'Enter Location'})
        self.fields['no_of_position'].widget.attrs.update({'placeholder': 'Enter No of Positions'})
    class Meta:
        model = JobOpening
        fields = ['job_title', 'slug', 'qualification', 'job_description', 'job_duties', 'desired_profile', 'experience_qualification', 'salary_range', 'location', 'no_of_position']


class TestinomialForm(forms.ModelForm):
	def __init__(self, *args, **kwargs):
		super(TestinomialForm, self).__init__(*args, **kwargs)
		for field in self.fields.values():
			field.widget.attrs = {"class": "form_control"}
		self.fields['title'].widget.attrs.update({'placeholder': 'Enter Title (*)'})
		self.fields['slug'].widget.attrs.update({'placeholder': 'Enter Slug (*)'})

	content = forms.CharField(
		widget=TinyMCEWidget(
			attrs={'required': False, 'cols': 30, 'rows': 10}
		)
	)
	class Meta:
		model = Testimonial
		fields = ['title','slug', 'content']        