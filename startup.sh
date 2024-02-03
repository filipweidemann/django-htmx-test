#!/bin/bash

exec bash -c "python3 manage.py tailwind start & python3 manage.py runserver 0:8000"
