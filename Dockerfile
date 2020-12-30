FROM python:3.7-alpine

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

WORKDIR /app
COPY ./app /app

RUN adduser -D myuser
USER myuser