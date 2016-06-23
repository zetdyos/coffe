from django.conf.urls import url

from ourstory.views import OurStoryView

urlpatterns = [
    url(r'^$', OurStoryView.as_view(), name='our-story'),
]
