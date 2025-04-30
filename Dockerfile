FROM apache/airflow:2.10.4-python3.10
COPY requirements.txt /
RUN pip3 install -r /requirements.txt
COPY --chown=airflow:root ./config/airflow.cfg /opt/airflow/airflow.cfg

USER airflow
