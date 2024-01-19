python -m venv .env
source .env/bin/activate
pip install Django
django-admin startproject CORE
cd CORE
sed -i "s/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS = ['*']/" CORE/settings.py
pip freeze > requirements.txt
echo "manage.py runserver 0.0.0.0:8000" > run.sh
python manage.py makemigrations
python manage.py migrate
bash run.sh
