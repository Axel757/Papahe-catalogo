from django.shortcuts import get_object_or_404, render
from papahe_app.models import *
from papahe_app.forms import * 
from shutil import unregister_unpack_format
from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required 
from django.db.models import Q
# Create your views here.
def user_login(request):

    if request.method == 'GET':

        return render(request, 'templatesUser/pphLogin.html', {'form':AuthenticationForm })
    else: 
        name = request.POST["username"]
        password = request.POST["password"]
        user = authenticate(request, username=name, password=password)
        if user is None:
            return render(request, 'templatesUser/pphLogin.html', {'form':AuthenticationForm,'mensaje': 'Usuario o contraseña incorrectos'})            

        else:
            login(request, user)
            return redirect('seleccion/')
    

def medicinalData(request):
    
    medicinal = ProductMed.objects.all()
    
    data = {
        'medicinal' : medicinal
    }
    
    return render(request, "ProductMed.html", data)

def gastronomicoData(request):
    
    gastronomico = ProductGas.objects.all()
    
    data = {
        'gastronomico' : gastronomico
    }
    
    return render(request, "ProductGas.html", data)

def catalogoData(request):
    
    catalogo = Catalogo.objects.all()
    
    data = {
        'catalogo' : catalogo
    }
    
    return render(request, "seleccion.html", data)




def productInfo(request, producto_id):
    producto = get_object_or_404(ProductMed, pk=producto_id) 
    data = {
        "producto" : producto
    }  


    return render(request, "productInfo.html", data)


def productInfoGastronomico(request, producto_id):
    producto = get_object_or_404(ProductGas, pk=producto_id) 
    data = {
        "producto" : producto
    }  


    return render(request, "productInfoGas.html", data)

#Sistema de inicio de sesión:
        
def registro1(request):
    if request.method == 'GET':
        return render(request,'registro1.html', {'form': UserCreationForm  })
    else:
        if request.POST["password1"] != request.POST["password2"]:
            return render(request,'templatesUser/registro1.html', {'form': UserCreationForm, 'mensaje': 'Error, no coinciden las contraseñas' })
        else:
            name = request.POST["username"] 
            password = request.POST["password1"]
            user = User.objects.create_user(username=name, password=password)
            user.save()
            return render(request,'templatesUser/registro1.html', {'form': UserCreationForm, 'mensaje': 'Usuario Registrado' })



def registro2(request):
    if request.method == 'GET':
        return render(request,'templatesUser/registro2.html', {'form': UserCreationForm  })
    else:
        if request.POST["password1"] != request.POST["password2"]:
            return render(request,'templatesUser/registro2.html', {'form': UserCreationForm, 'mensaje': 'Error, no coinciden las contraseñas' })
        else:
            name = request.POST["username"] 
            password = request.POST["password1"]
            user = User.objects.create_user(username=name, password=password)
            user.save()
            return render(request,'templatesUser/registro2.html', {'form': UserCreationForm, 'mensaje': 'Usuario Registrado' })   

@login_required
def home(request):
    return render(request, 'seleccion.html')        


def salir(request):
    logout(request)
    return redirect('../')


# Create your views here.

def medicinalData(request):
    search_term = request.GET.get('search', '')
    
    medicinal = ProductMed.objects.filter(
        Q(nombre__icontains=search_term) | Q(categoria__icontains=search_term) | Q(farmacia__icontains=search_term)
    )
    
    data = {
        'medicinal': medicinal,
        'search_term': search_term,
    }
    
    return render(request, "ProductMed.html", data)


def medicinalCategoria(request, categoria):
    medicinal = ProductMed.objects.filter(categoria__iexact=categoria)
    
    data = {
        'medicinal': medicinal,
        'categoria': categoria,
    }
    
    return render(request, 'ProductMed.html', data)