FROM python:3.8.1-slim-buster

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN python -m pip install -U pip

COPY requirements.txt /usr/src/app

RUN pip install -r requirements.txt

COPY . /usr/src/app