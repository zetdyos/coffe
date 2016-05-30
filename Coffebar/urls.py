from django.conf.urls import include, url
from django.contrib import admin
from django.views.static import serve
from django.conf import settings

from main import views


admin.autodiscover()
urlpatterns = [

    url(r'^$', views.index, name='index'),
    #url(r'^blog/', include('blog.urls'), name='blog'),
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    url(r'^admin/', include(admin.site.urls)),
    #url(r'^comments/', include('django_comments.urls')),
    url(r'^comments/', include('fluent_comments.urls')),
    url(r'^articles/', include('article.urls'), name='blog'),
    url(r'^event/', include('event.urls'), name='event'),
    url(r'^product/', include('product.urls'), name='product'),
    url(r'^media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT, }),
    url(r'^ckeditor/', include('ckeditor_uploader.urls')),
    url(r'^contact/', include('contact_form.urls')),
    url(r'^gallery/', include('coffegallery.urls')),
]