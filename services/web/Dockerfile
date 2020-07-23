FROM python:3.8.1-slim-buster

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

ENV FLASK_APP=project/__init__.py

COPY . /usr/src/app

RUN apt update
RUN apt install -y netcat
RUN apt install -y pipenv

RUN pipenv install --system

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
