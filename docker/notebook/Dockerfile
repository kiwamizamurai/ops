FROM jupyter/datascience-notebook:python-3.9.6
USER root
ENV DEBCONF_NOWARNINGS yes

USER jovyan
WORKDIR /home/jovyan
COPY Pipfile .
COPY Pipfile.lock .

RUN jupyter labextension install jupyterlab-plotly@4.14.3

RUN pip install --no-cache-dir pipenv==2021.5.29 \
    && pipenv install --system \
    && rm Pipfile*
