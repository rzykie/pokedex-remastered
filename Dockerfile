FROM python:3.11-slim

WORKDIR /web

RUN apt-get update

RUN apt-get install -y libpq-dev gcc

RUN pip install poetry

COPY . /web

RUN POETRY_VIRTUALENVS_CREATE=false poetry install

VOLUME ["/web"]