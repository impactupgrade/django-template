#!/bin/bash
# Delete database, run migration, populate database, start server

export DEBUG="true"
export LOCAL="true"
#export DJANGO_LOG_LEVEL="DEBUG"
pip install -r requirements.txt
rm db.sqlite3
export DATABASE_URL=sqlite://./db.sqlite3
#python manage.py makemigrations
#python manage.py migrate
python manage.py createsuperuser --username admin --email admin@email.com
python manage.py runserver 8000