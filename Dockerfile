FROM ubuntu:18.04
LABEL maintainer="dalmatialab"

# Install tzdata and set right timezone
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt-get -y install tzdata
ENV TZ=Europe/Zagreb SU_TIMEOUT=30 LOG_LEVEL=INFO

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      git \
      python3 \
      python3-dev \
      python3-pip \
      python3-setuptools \
      python3-pycurl \
      build-essential \
      sqlite3 \
      libpq-dev \
      && apt-get purge && apt-get clean
      
RUN python3 -m pip install --upgrade pip

RUN pip3 install --no-cache-dir jupyterhub jupyterhub-dummyauthenticator \
	jupyterhub-tmpauthenticator jupyterhub-ltiauthenticator \
	jupyterhub-ldapauthenticator jupyterhub-kubespawner \
	kubernetes nullauthenticator oauthenticator pymysql \
	psycopg2 pycurl statsd mwoauth globus_sdk[jwt] cryptography
	
ADD lib/jupyterhub_config.py /srv/jupyterhub_config.py
ADD lib/z2jh.py /usr/local/lib/python3.6/dist-packages/z2jh.py
ADD lib/cull_idle_servers.py /usr/local/bin/cull_idle_servers.py

WORKDIR /srv/jupyterhub

# JupyterHub API port
EXPOSE 8081

CMD ["jupyterhub", "--config", "/srv/jupyterhub_config.py"]
