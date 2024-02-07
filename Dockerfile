FROM python:3.11
RUN pip install pipenv
RUN curl -fsSL https://deb.nodesource.com/setup_21.x | bash - && apt-get install -y nodejs

WORKDIR /app
COPY Pipfile Pipfile.lock .
RUN pipenv sync --system

COPY . .

RUN python3 manage.py tailwind install --no-input
CMD ["python3", "manage.py", "runserver", "0:8000"]
