# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('event', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='event',
            options={'get_latest_by': 'order_date', 'verbose_name': 'Event', 'verbose_name_plural': 'Events'},
        ),
    ]
