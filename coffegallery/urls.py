from django.conf.urls import url
from coffegallery.views import CoffeAlbumView, PhotoDetailView, VideoDetailView

urlpatterns = [
    url(r'^$', CoffeAlbumView.as_view(), name='album-list'),
    url(r'^detail/photo/(?P<pk>[0-9]+)/$', PhotoDetailView.as_view(), name='photo-details'),
    url(r'^detail/video/(?P<pk>[0-9]+)/$', VideoDetailView.as_view(), name='video-details'),
]
