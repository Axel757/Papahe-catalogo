from django import forms

class EmailAuthenticationForm(forms.Form):
    email = forms.EmailField(
        label="Email",
        required=True,
        error_messages={
            'required': 'El campo de correo electrónico es obligatorio.',
        }
    )
    password = forms.CharField(
        label="Contraseña",
        widget=forms.PasswordInput,
        required=True,
        error_messages={
            'required': 'El campo de contraseña es obligatorio.',
        }
    )
