# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):
    dependencies = [
        ('coffegallery', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='CoffeAlbum',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=50, verbose_name=b'Album title')),
                ('description', models.CharField(max_length=255, verbose_name=b'Album description', blank=True)),
                ('enable_album', models.BooleanField(default=False, verbose_name=b'Enable Album')),
            ],
            options={
                'verbose_name': 'Coffe Media Album',
            },
        ),
        migrations.RemoveField(
            model_name='coffegallery',
            name='photo',
        ),
        migrations.RemoveField(
            model_name='coffegallery',
            name='video',
        ),
        migrations.DeleteModel(
            name='CoffeGallery',
        ),
        migrations.AddField(
            model_name='photo',
            name='album',
            field=models.ForeignKey(blank=True, to='coffegallery.CoffeAlbum', null=True),
        ),
        migrations.AddField(
            model_name='youtubevideo',
            name='album',
            field=models.ForeignKey(blank=True, to='coffegallery.CoffeAlbum', null=True),
        ),
    ]
