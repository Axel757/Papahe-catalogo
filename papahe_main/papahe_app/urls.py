from django.urls import path
from papahe_app.views import *
from django.contrib.auth.decorators import login_required 
from django.contrib.auth.views import LogoutView
urlpatterns = [
    path('', user_login, name='login'),
    path('salir/', LogoutView.as_view(), name='salir'),
     
    path('seleccion/', catalogoData, name='seleccion'),
    path('catalogo/medicinal/', medicinalData, name='medicinal'),
    path('catalogo/gastronomico/', gastronomicoData, name='gastronomico'),

    path('catalogo/medicinal/<int:producto_id>/', productInfo, name='productInfo'),
    path('catalogo/gastronomico/<int:producto_id>/', productInfoGastronomico, name='productInfoGas'),
    
    
    path('catalogo/medicinal/<str:categoria>/', medicinalCategoria, name='medicinalCategoria'),
    
    
    #Crud productos medicinales
    path('catalogo/agregar/', agregar, name='agregarmedicinal'),
    path('catalogo/medicinal/modificar/<int:producto_id>/', modificar,name='modificarmedicinal'),
    path('catalogo/medicinal/eliminar/<int:producto_id>/', eliminar, name='eliminarmedicinal')
]