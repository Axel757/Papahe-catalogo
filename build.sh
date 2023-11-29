#!/usr/bin/env bash
# exit on error
set -o errexit

# poetry install
pip install -r requirements.txt
pip install --upgrade pip
gunicorn papahe_main.wsgi
python manage.py collectstatic --no-input
python manage.py migrate