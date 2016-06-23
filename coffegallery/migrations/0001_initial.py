# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import imagekit.models.fields


class Migration(migrations.Migration):
    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CoffeGallery',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=50)),
                ('description', models.CharField(max_length=255, blank=True)),
            ],
            options={
                'verbose_name': 'Coffe Media Album',
            },
        ),
        migrations.CreateModel(
            name='Photo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=50)),
                ('description', models.CharField(max_length=255, blank=True)),
                ('original_image', models.ImageField(upload_to=b'galleries/%Y/%m/%d')),
            ],
            options={
                'ordering': ['title'],
            },
        ),
        migrations.CreateModel(
            name='YouTubeVideo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=50)),
                ('embed_code', models.TextField()),
                ('thumbnail',
                 imagekit.models.fields.ProcessedImageField(upload_to=b'galleries/video/%Y/%m/%d/thumbnail')),
            ],
            options={
                'ordering': ['title'],
            },
        ),
        migrations.AddField(
            model_name='coffegallery',
            name='photo',
            field=models.ForeignKey(blank=True, to='coffegallery.Photo', null=True),
        ),
        migrations.AddField(
            model_name='coffegallery',
            name='video',
            field=models.ForeignKey(blank=True, to='coffegallery.YouTubeVideo', null=True),
        ),
    ]
