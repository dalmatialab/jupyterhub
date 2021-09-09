![example workflow](https://github.com/dalmatialab/jupyterhub/actions/workflows/main.yml/badge.svg)

# Supported tags and respective Dockerfile links

 - 1.0-rc-1
 - 1.0-rc-2
 
# What is JupyterHub ? 

[JupyterHub](https://jupyterhub.readthedocs.io/en/stable/index.html) is the best way to serve Jupyter notebook for multiple users. It can be used in a class of students, a corporate data science group or scientific research group. It is a multi-user Hub that spawns, manages, and proxies multiple instances of the single-user Jupyter notebook server.

<img src="https://github.com/dalmatialab/jupyterhub/blob/474b2b2b054604bb2c876624caaa587ee8efea0e/logo.png?raw=true" width="250" height="100">

## Environment variables

**TZ**

This is *optional* variable. It specifes timezone. Default value is `Europe/Zagreb`.

# NOTE

This image serve as JupyterHub notebook spawners for Kubernetes, so it cannot be used in Docker.  
For possible adjustment and usage in Docker read more in [documentation](https://jupyterhub.readthedocs.io/en/stable/quickstart-docker.html).

# License

