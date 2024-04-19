#!/usr/bin/env bash
# Exit on error
set -o errexit

# Modify this line as needed for your package manager (pip, poetry, etc.)
cd despliegueAle\curso_backend_django\web_personal\web_personal
pip install poetry
pip install -r requirements.txt

pip freeze > requirements.txt

# Convert static asset files
python manage.py collectstatic --no-input

# Apply any outstanding database migrations
python manage.py migrate