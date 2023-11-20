from django.urls import path
from papahe_app.views import *

urlpatterns = [
    path('', user_login, name='user_login'),
    path('seleccion/', catalogoData, name='seleccion'),
    path('catalogo/medicinal/', medicinalData, name='medicinal'),
    path('catalogo/gastronomico/', gastronomicoData, name='gastronomico'),

    path('catalogo/medicinal/<int:producto_id>/', productInfo, name='productInfo'),
    path('catalogo/gastronomico/<int:producto_id>/', productInfoGastronomico, name='productInfoGas'),
    
    
    path('catalogo/medicinal/<str:categoria>', medicinalCategoria, name='medicinalCategoria'),
]