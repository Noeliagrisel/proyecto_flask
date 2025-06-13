## Proyecto Flask Simple

Este es un proyecto de prueba usando Python y Flask, que despliega una página web con un saludo.  
Incluye ejecución local con entorno virtual y una imagen Docker para facilitar su despliegue.

---

## 📋 Requisitos

- Python 3.8 o superior
- Docker Desktop
- Entorno virtual (`venv`)

---

## 🧪 Instalación local

```bash
# Crear entorno virtual
python -m venv venv

# Activar entorno virtual (Windows PowerShell)
.\venv\Scripts\Activate

# Instalar dependencias
pip install -r requirements.txt

---

## 🚀 Ejecutar la app localmente
python app.py
En el navegador: http://localhost:5000

## 🐳 Ejecutar con Docker
# Construir la imagen
docker build -t flask-app .

# Ejecutar el contenedor
docker run -d -p 5000:5000 flask-app

