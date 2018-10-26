# Docker

## Key terms
| Term | Meaning |
| ---- | ------- |
| Image | An executable package that includes everything needed to run an application - the code, a runtime, libraries, environment variables, and configuration files
| Container | A runtime instance of an image - what the image becomes in memory when executed (that is, an image with state, or a user process)
| Repository | A collection of images (like a GitHub repository, but with the code already built) |
| Registry | A collection of repositories |

## Useful commands
### General docker commands
| Command | Description |
| :------ | :---------- |
| `docker --version` | See docker version |
| `docker info` | See docker info |
| `docker version` | See shorter docker info |

### Image and container commands
| Command | Description |
| :------ | :---------- |
| `docker image ls` | See all docker images on machine |
| `docker container ls` | See all (active) docker containers |
| `docker container ls --all` | See all previously run containers |
| `docker container ls -aq` | See just the uuids of all previously run containers (quiet mode) |

### Building images and running containers
| Command | Description |
| :------ | :---------- |
| `docker build -t friendly_name` | Build a docker image and tag it with `friendly_name` |
| `docker run image_name` | Run image `image_name` |
| `docker run -p machine_port:container_port friendly_name` | Run the image `friendly_name` and map the resulting container's published `container_port` to the `machine_port` |
| `docker run -d -p machine_port:container_port friendly_name` | Same as above, but detach from the container (run it in the background) and return the container ID |
| `docker container stop container_id` | Stop container `container_id` | 

### Sharing images
| Command | Description |
| :------ | :---------- |
| `docker login` | Log into the Docker public registry |
| `docker tag image username/respository:tag` | Tag an image for upload to a `repository` under account `username` in a registry; the `tag` is often used for versioning of the image |
