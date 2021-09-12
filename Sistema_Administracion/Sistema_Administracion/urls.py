"""Sistema_Administracion URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
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


from Index.views import nuevoLibro
from Index.views import registro
from django.urls.conf import include
from .settings import STATIC_URL
from Index.views import detalleLibro
from Index.views import Index_Libreria
from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path("", Index_Libreria, name="principal"),
    path("detalle", detalleLibro, name="detalle"),
    path("accounts/", include("django.contrib.auth.urls")),
    path("registro/", registro, name="registro"),
    path("nuevo/", nuevoLibro, name="nuevo"),
    
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)