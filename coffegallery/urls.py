from django.conf.urls import url

from coffegallery.views import CoffeAlbumView

urlpatterns = [
    url(r'^$', CoffeAlbumView.as_view(), name='album-list'),
]
