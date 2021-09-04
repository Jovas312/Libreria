from django.contrib.auth.signals import user_logged_in
from Index.models import Libros
from django.forms import ModelForm, widgets
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class PersonaForm(ModelForm):
   class Meta:
       model = Libros
       fields = "__all__"
       widgets = {
           "email": widgets.FileInput(attrs={"type":"file"})
       }

class CustomUserCreationForm(UserCreationForm):
    
    class Meta:
        model = User
        fields = ["username", "first_name", "last_name", "email", "password1", "password2"]