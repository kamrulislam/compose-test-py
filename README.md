# Configurable docker-compose for python flask application

This is customized from [Docker Compose](https://docs.docker.com/compose/gettingstarted/). It is a Flask application which used redis cache.

## Architecture

Two containers are used 
- Redis container
- Python flask application container which talks to redis container
- Fully configurable PORT number so that multiple flask applications can be run using different ports


