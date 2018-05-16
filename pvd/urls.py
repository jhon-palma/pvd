from django.contrib import admin
from django.urls import path
from django.conf.urls import url, include
from app.asistencia.views import *

urlpatterns = [
    path('admin/', admin.site.urls),
    url(r'^$', login, name='login'),
    url(r'^logout/$', logout, name='logout'),
    url(r'^informes/', include('app.informes.urls',namespace='informes')),
    url(r'^asistencia/', include('app.asistencia.urls',namespace='asistencia')),
]
