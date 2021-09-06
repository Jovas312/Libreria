from django.shortcuts import get_object_or_404, redirect, render
from .admin import Libros
from .forms import CustomUserCreationForm
from django.contrib.auth import authenticate, login
from django.contrib import messages

# Create your views here.
def Index_Libreria(request):
    libros = Libros.objects.order_by("id")
    return render(request, "principal.html", {"libros":libros})

def detalleLibro(request, id):
    #persona = Persona.objects.get(pk=id)
    libro = get_object_or_404(Libros, pk=id)
    return render(request, "detalle_libro.html", {"libro":libro})

def registro(request):
    data = {
        "form":CustomUserCreationForm()
    }
    if request.method == "POST":
        formulario = CustomUserCreationForm(data=request.POST)
        if formulario.is_valid():
            formulario.save()
            user = authenticate(username=formulario.cleaned_data["username"], password=formulario.cleaned_data["password1"])
            login(request, user)
            messages.success(request, "Registrado exitosamente")
            #Redirigir al home
            return redirect(to="principal")
        data["form"] = formulario
    return render(request, "registration/registro.html", data)