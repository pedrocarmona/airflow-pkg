web: airflow webserver --port $PORT
worker: env AIRFLOW__CELERY__WORKER_LOG_SERVER_PORT=$PORT airflow worker
scheduler: airflow scheduler
