# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import imagekit.models.fields
import ckeditor_uploader.fields


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='OurStory',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(default='Our Story', max_length=50, verbose_name='Story title')),
                ('sideimage', imagekit.models.fields.ProcessedImageField(upload_to=b'our/story/%Y/%m/%d/')),
                ('content', ckeditor_uploader.fields.RichTextUploadingField(verbose_name='Story')),
                ('published', models.BooleanField(default=False, verbose_name='Is published?')),
            ],
            options={
                'ordering': ['title'],
                'verbose_name': 'Our Story',
            },
        ),
    ]
