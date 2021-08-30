from Index.models import Libros
from django.forms import ModelForm, fields, widgets

class PersonaForm(ModelForm):
    class Meta:
        model = Libros
        fields = "__all__"
        widgets = {
            "email": widgets.FileInput(attrs={"type":"file"})
        }   