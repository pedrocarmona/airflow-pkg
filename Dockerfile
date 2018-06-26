FROM python:3.6.5

RUN apt-get update

WORKDIR /app

RUN pip install pip==9.0.3
RUN pip install pipenv==11.10.4
RUN pipenv install pip==9.0.3
