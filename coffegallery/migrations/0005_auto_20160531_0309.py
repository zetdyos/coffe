# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):
    dependencies = [
        ('coffegallery', '0004_auto_20160530_2220'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='youtubevideo',
            options={'ordering': ['title'], 'verbose_name': 'Embed Video Url '},
        ),
        migrations.AlterField(
            model_name='youtubevideo',
            name='embed_code',
            field=models.TextField(verbose_name=b'Video url(youtube|youtu|vimeo)'),
        ),
    ]
