# Generated by Django 2.0.13 on 2019-12-06 09:33

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('academyapp', '0002_pages'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='enquiryform',
            name='last_name',
        ),
    ]
