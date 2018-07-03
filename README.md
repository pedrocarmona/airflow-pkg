# Airflow Package - packager.io

## Install

```
wget -qO- https://dl.packager.io/srv/pedrocarmona/airflow-pkg/key | sudo apt-key add -
sudo wget -O /etc/apt/sources.list.d/airflow-pkg.list \
  https://default:#################################################@dl.packager.io/srv/pedrocarmona/airflow-pkg/master/installer/ubuntu/16.04.repo

sudo apt-get update
sudo apt-get install airflow
```

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

pipenv install Cython \
    && pipenv install pytz \
    && pipenv install pyasn1 \
    && pipenv install 'httplib2==0.9.2' \
    && pipenv install google-auth \
    && pipenv install google-auth-httplib2 \
    && pipenv install google-cloud-container \
    && pipenv install google-api-python-client \
    && pipenv install PyOpenSSL \
    && pipenv install pandas-gbq \
    && pipenv install 'docker==3.4.1' \
    && pipenv install apache-airflow[async,crypto,celery,password,postgres,slack,redis,segment,statsd,docker,mysql]==1.9.0

```
