"""
URL configuration for papahe_main project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include
from papahe_app.views import *

urlpatterns = [
    path('admin/', admin.site.urls),
    path('papahe/', include('papahe_app.urls')),

    #path('', inicioApp, name='inicioApp'),
    path('papahe/registro/', registro2, name='registro2'),
    path('papahe/salir/', salir, name='salir'),
    path('static/css', include('static/css.urls', namespace='static', use_prefix='True'))
    
] + static(settings.STATIC_URL, document_root = settings.STATIC_ROOT)
