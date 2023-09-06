set DEBUG=true
set LOCAL=true
@REM set DJANGO_LOG_LEVEL=DEBUG
pip install -r requirements.txt
del db.sqlite3
set DATABASE_URL=sqlite://./db.sqlite3
@REM python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser --username admin --email admin@email.com
python manage.py runserver 8000