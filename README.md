# django-template
Use this repository as a template project for most django projects. This way, most of the boilerplate details are pre-filled and standardized.

## Getting Started

- Create new django project from template
  - Create the directory you want the new project to be in (name it the same as your project name) and navigate into it
    ```
    mkdir <project_name>
    ```
  - Setup the initial virtual environment and make sure django is installed
    ```
    python3 -m venv env
    source env/bin/activate (for Windows use: env\scripts\activate)
    pip install django
    ```
  - Run the following command to create the new project, using django-template as a template project in your new directory (note: the '.' at the end of the command notes to use the current directory)
    ```
    django-admin startproject --template=https://github.com/impactupgrade/django-template/archive/master.zip <project_name> .
    ```

## Typical Start-Up
- Create virtual environment / install app requirements / setup db / start server

```
python3 -m venv env (if not already created)
source env/bin/activate (for Windows use: env\scripts\activate)
pip install -r requirements.txt
export/set DATABASE_URL=<db_connection_url>
python manage.py makemigrations
python manage.py migrate
python manage.py runserver 8000
```

You can also use `run_setup.sh` or `run_setup.bat` to achieve the above all in one shot -- make/migrate DB schema 
changes, and boot up the server.

Create a superuser for the django admin panel and enter password via the terminal

`python manage.py createsuperuser --username admin --email admin@email.com`

If making DB modifications, make db migrations to update schema

`python manage.py makemigrations` to create the migration file

`python manage.py migrate` to apply new migrations

## Active Development

Once everything is setup and working you can run the below shell/batch script in the
command line to destroy the database, create an empty new database, migrate to
latest schema, and start the dev server

`./run_setup.sh` or `./run_setup.bat`
