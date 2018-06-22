# Airflow Package - packager.io

## Install


You should configure this as a unix package and configure it via /etc/.

env:
  - WEB_CONCURRENCY=5
  - AIRFLOW__CORE__LOAD_EXAMPLES=False
  - AIRFLOW_HOME=/etc/airflow/
  - AIRFLOW__WEBSERVER__AUTHENTICATE=True
  - AIRFLOW__WEBSERVER__AUTH_BACKEND=airflow.contrib.auth.backends.password_auth


## Contributing

Install `pipenv` if you want to update this app.

```
pipenv update .
```

This was initially created with pip 9.0.3, because pip 10 was failing to download apache-airflow extras.

```
docker-compose run --rm app bash

pipenv install pip==9.0.3 --dev

pipenv install Cython \
    && pipenv install pytz \
    && pipenv install pyOpenSSL \
    && pipenv install jinja2 \
    && pipenv install cryptography \
    && pipenv install ndg-httpsclient \
    && pipenv install psycopg2-binary \
    && pipenv install pyasn1 \
    && pipenv install Flask-OAuthlib==0.9.4 \
    && pipenv install apache-airflow[async,crypto,celery,gcp_api,password,postgres,slack]==1.8.2

```
