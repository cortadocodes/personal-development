# Docker

## Key terms
| Term | Meaning |
| --------- | ------- |
| Image | An executable package that includes everything needed to run an application - the code, a runtime, libraries, environment variables, and configuration files.
| Container | A runtime instance of an image - what the image becomes in memory when executed (that is, an image with state, or a user process).

## Useful commands
| Command | Description |
| :------ | :---------- |
| `docker --version` | See docker version |
| `docker info` | See docker info |
| `docker version` | See shorter docker info |
| `docker run image_name` | Run image `image_name` |
| `docker image ls` | See all docker images on machine |
| `docker container ls` | See all (active) docker containers |
| `docker container ls --all` | See all previously run containers |
| `docker container ls -aq` | See just the uuids of all previously run containers (quiet mode) |
