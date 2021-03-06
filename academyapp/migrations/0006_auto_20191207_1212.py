# Generated by Django 2.0.13 on 2019-12-07 12:12

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('academyapp', '0005_remove_enquiryform_gender'),
    ]

    operations = [
        migrations.CreateModel(
            name='JobApplicationForm',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('first_name', models.CharField(max_length=255)),
                ('last_name', models.CharField(blank=True, max_length=255, null=True)),
                ('email', models.EmailField(max_length=254)),
                ('phone', models.CharField(max_length=13)),
                ('description', models.TextField(blank=True, null=True)),
                ('resume', models.FileField(upload_to='uploaded_files')),
                ('created_on', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='JobOpening',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('job_title', models.CharField(max_length=255)),
                ('slug', models.SlugField(blank=True, max_length=900, null=True)),
                ('qualification', models.CharField(max_length=255)),
                ('job_description', models.TextField(blank=True, null=True)),
                ('job_duties', models.TextField(blank=True, null=True)),
                ('desired_profile', models.TextField(blank=True, null=True)),
                ('experience_qualification', models.TextField(blank=True, null=True)),
                ('salary_range', models.CharField(blank=True, max_length=255, null=True)),
                ('location', models.CharField(blank=True, max_length=255, null=True)),
                ('no_of_position', models.IntegerField(default=0)),
                ('meta_description', models.TextField(blank=True, null=True)),
                ('keywords', models.TextField(blank=True, null=True)),
                ('published_on', models.DateTimeField(blank=True, null=True)),
                ('created_on', models.DateTimeField(auto_now=True)),
                ('modified_on', models.DateTimeField(auto_now=True)),
                ('created_by', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.AddField(
            model_name='jobapplicationform',
            name='job_title',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='academyapp.JobOpening'),
        ),
    ]
