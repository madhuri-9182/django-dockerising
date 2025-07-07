#!/bin/bash
set -e

cd /app/Hiringdog-backend

# Run migrations and collectstatic
python manage.py migrate --noinput
python manage.py collectstatic --noinput

exec "$@"
