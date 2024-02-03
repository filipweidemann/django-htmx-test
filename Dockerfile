FROM python:3.11
RUN pip install pipenv
RUN curl -fsSL https://deb.nodesource.com/setup_21.x | bash - && apt-get install -y nodejs

WORKDIR /app
COPY Pipfile Pipfile.lock .
RUN pipenv sync --system

COPY . .
CMD ./startup.sh
