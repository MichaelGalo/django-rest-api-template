#!/bin/bash

rm db.sqlite3
rm -rf ./templateapi/migrations
python3 manage.py migrate
python3 manage.py makemigrations templateapi
python3 manage.py migrate templateapi
python3 manage.py loaddata users
python3 manage.py loaddata tokens

