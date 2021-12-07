![example workflow](https://github.com/dalmatialab/jupyterhub/actions/workflows/main.yml/badge.svg)

# Supported tags and respective Dockerfile links

 - [1.0-rc-1](https://github.com/dalmatialab/jupyterhub/blob/86c642af20721bf7b1c5a82e037802946630df32/Dockerfile)
 - [1.0-rc-2](https://github.com/dalmatialab/jupyterhub/blob/1aa98c29fab4db25ec9ab46457f1023bf0ff33dc/Dockerfile)
 - [1.0-rc-3](https://github.com/dalmatialab/jupyterhub/blob/6c38d7c93c9f47548d49c60ffc6241a3ec52b7cc/Dockerfile)
 
# What is JupyterHub ? 

[JupyterHub](https://jupyterhub.readthedocs.io/en/stable/index.html) is the best way to serve Jupyter notebook for multiple users. It can be used in a class of students, a corporate data science group or scientific research group. It is a multi-user Hub that spawns, manages, and proxies multiple instances of the single-user Jupyter notebook server.

<img src="https://github.com/dalmatialab/jupyterhub/blob/474b2b2b054604bb2c876624caaa587ee8efea0e/logo.png?raw=true" width="250" height="100">

## Environment variables

**TZ**

This is *optional* variable. It specifes timezone. Default value is `Europe/Zagreb`.

**SU\_TIMEOUT**

This variable specifies timeout for single-user server instance. Default value is 30.

**LOG\_LEVEL**

This variable specifies logging level for the Hub. Default value is INFO.

# NOTE

This image serve as JupyterHub notebook spawners for Kubernetes, so it cannot be used in Docker.  
For possible adjustment and usage in Docker read more in [documentation](https://jupyterhub.readthedocs.io/en/stable/quickstart-docker.html).

# License

