from django.conf.urls import url
from event.views import EventDetailView

urlpatterns = [
    url(r'^detail/(?P<slug>[^/]+)/$', EventDetailView.as_view(), name='event-details'),
]