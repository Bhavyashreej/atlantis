# Generated by Django 2.0 on 2019-12-26 04:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('academyapp', '0008_userprofile'),
    ]

    operations = [
        migrations.AddField(
            model_name='lastestnew',
            name='excerpt',
            field=models.TextField(blank=True, null=True),
        ),
    ]