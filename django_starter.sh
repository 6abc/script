python -m venv .env
source .env/bin/activate
pip install Django
django-admin startproject CORE
cd CORE
sed -i "s/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS = ['*']/" CORE/settings.py
pip freeze > requirements.txt
python manage.py makemigrations
python manage.py migrate
python manage.py runserver 0.0.0.0:8000
