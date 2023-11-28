from django.http import HttpResponse, HttpResponseForbidden
from django.shortcuts import get_object_or_404, render
from papahe_app.models import *
from papahe_app.forms import *
from django.shortcuts import render, redirect
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import authenticate, login, logout, get_user_model
from django.views.decorators.http import require_http_methods
from django.db.models import Q
from django.contrib import messages
from django.urls import reverse, reverse_lazy
import logging
from .forms import CustomAuthenticationForm
from django.views.generic.edit import DeleteView
from papahe_app.mixins import *


logger = logging.getLogger(__name__)
CustomUser = get_user_model()
# Create your views here.

# Sistema de validación, registro y logout


def registro2(request):
    if request.method == 'POST':
        form = CustomUserCreationForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)

            # Verificar si el tipo de usuario es "administrador"
            if form.cleaned_data['tipo_usuario'] == 'administrador':
                user.is_staff = True
                user.is_superuser = True

            user.save()
            messages.success(request, 'Administrador Registrado')
            # Autenticar y redirigir al usuario después del registro
            user = authenticate(username=user.username,
                                password=form.cleaned_data['password1'])
            login(request, user)

            return redirect('login')

    else:
        form = CustomUserCreationForm()

    return render(request, 'templatesUser/registro2.html', {'form': form})


def user_login(request):
    if request.method == 'POST':
        form = CustomAuthenticationForm(request, request.POST)
        if form.is_valid():
            name = form.cleaned_data['username']
            password = form.cleaned_data['password']
            user = authenticate(request, username=name, password=password)
            if user is not None:
                login(request, user)
                print("Usuario autenticado con éxito.")
                return redirect('seleccion')
            else:
                messages.error(
                    request, "El usuario o la contraseña son incorrectos.")
        else:
            messages.error(request, "El Nombre o la Clave son incorrectas.")
    else:
        form = CustomAuthenticationForm(request)

    return render(request, 'templatesUser/pphLogin.html', {'form': form})


@login_required
def salir(request):
    logout(request)
    return redirect('papahe/')

# Sistema de catalogo


@login_required
def catalogoData(request):
    tipo_usuario = request.user.tipo_usuario
    username = request.user.username if request.user.is_authenticated else 'Anónimo'
    catalogo = Catalogo.objects.all()
    data = {'username': username, 'catalogo': catalogo,
            'tipo_usuario': tipo_usuario}
    return render(request, "seleccion.html", data)


@login_required
def medicinalData(request):
    search_term = request.GET.get('search', '')
    medicinal = ProductMed.objects.filter(
        Q(nombre__icontains=search_term) | Q(
            categoria__icontains=search_term) | Q(farmacia__icontains=search_term)
    )
    data = {'medicinal': medicinal, 'search_term': search_term}
    return render(request, "ProductMed.html", data)


@login_required
def gastronomicoData(request):
    gastronomico = ProductGas.objects.all()
    data = {'gastronomico': gastronomico}
    return render(request, "ProductGas.html", data)


@login_required
def productInfo(request, producto_id):
    producto = get_object_or_404(ProductMed, pk=producto_id)
    data = {"producto": producto}
    return render(request, "productInfo.html", data)


@login_required
def productInfoGastronomico(request, producto_id):
    producto = get_object_or_404(ProductGas, pk=producto_id)
    data = {"producto": producto}
    return render(request, "productInfoGas.html", data)


@login_required
def medicinalCategoria(request, categoria):
    medicinal = ProductMed.objects.filter(categoria__iexact=categoria)
    data = {'medicinal': medicinal, 'categoria': categoria}
    return render(request, 'ProductMed.html', data)


# Sistema Crud de productos
@login_required
def agregar(request):
    form = FormProductos()

    if request.method == 'POST':
        form = FormProductos(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('medicinal')
        print('Producto Agregado')
    data = {'form': form, 'titulo': 'Agregar Producto'}
    return render(request, 'Formularios/FormMedicinal.html', data)


@login_required
def eliminar(request, producto_id):
    producto = get_object_or_404(ProductMed, id=producto_id)
    producto.delete()
    return redirect('medicinal')


@login_required
def modificar(request, producto_id):
    productMed = get_object_or_404(ProductMed, id=producto_id)
    form = FormProductos(instance=productMed)

    if request.method == 'POST':
        form = FormProductos(request.POST, request.FILES, instance=productMed)
        try:
            if form.is_valid():
                producto_modificado = form.save(commit=False)
                producto_modificado.save()
                return redirect('productInfo', producto_id=producto_modificado.id)
            print(form.errors)
            print('Producto modificado')
        except ValidationError as e:
            print(f'Error de validación: {e}')
        except Exception as e:
            print(f'Ocurrió un error: {e}')

    return render(request, 'Formularios/FormMedicinal.html', {'form': form, 'producto': productMed})


from django.contrib.auth.decorators import user_passes_test
#Funcion para validar administradores
def adminVerify(user):
    return user.is_authenticated and user.is_superuser

# Sistema Crud de productos
@login_required
@user_passes_test(adminVerify)
def agregar(request):
    form = FormProductos()

    if request.method == 'POST':
        form = FormProductos(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('medicinal')
        print('Producto Agregado')
    data = {'form': form, 'titulo': 'Agregar Producto'}
    return render(request, 'Formularios/FormMedicinal.html', data)


@login_required
@user_passes_test(adminVerify)
def eliminar(request, producto_id):
    producto = get_object_or_404(ProductMed, id=producto_id)
    producto.delete()
    return redirect('medicinal')


class ProductDeleteView(AdminRequiredMixin, DeleteView):
    model = ProductMed
    template_name = 'eliminar_producto.html'
    success_url = reverse_lazy('medicinal')

    def test_func(self):
        return adminVerify(self.request.user)

@login_required
@user_passes_test(adminVerify)
def modificar(request, producto_id):
    productMed = get_object_or_404(ProductMed, id=producto_id)
    form = FormProductos(instance=productMed)

    if request.method == 'POST':
        form = FormProductos(request.POST, request.FILES, instance=productMed)
        try:
            if form.is_valid():
                producto_modificado = form.save(commit=False)
                producto_modificado.save()
                return redirect('productInfo', producto_id=producto_modificado.id)
            print(form.errors)
            print('Producto modificado')
        except ValidationError as e:
            print(f'Error de validación: {e}')
        except Exception as e:
            print(f'Ocurrió un error: {e}')

    return render(request, 'Formularios/FormMedicinal.html', {'form': form, 'producto': productMed})