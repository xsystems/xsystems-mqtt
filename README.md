# xSystems MQTT

> An MQTT image with opinionated (xSystems specific) configuration based on Mosquitto.

## Usage

### Run

Create a [Mosquitto password file][mosquitto-password-file] containing the credentials for all clients.

When running a container of this image you **MUST** mount the before mentioned password file under `/run/secrets/mosquitto.passwd` inside the container.
That is, the following file **MUST** be available inside the container:

  - `/run/secrets/mosquitto.passwd`

This can either be achieved using Docker Volumes or Docker Secrets.

### Example

This image can be used as follows:

```sh
docker run  --tty \
            --interactive \
            --rm \
            --volume `pwd`/mosquitto.passwd:/run/secrets/mosquitto.passwd \
            --publish 1883:1883 \
            xsystems/mqtt
```


## Build the Image

Run [build.sh](build.sh) to build an image of the current codebase state with tag `latest`.


## Release the Image

1. Set the `VERSION` environment variable to the version that needs to be released.
2. Optionally, set the `COMMIT` environment variable to the hash of the Git commit that needs to be released. It defaults to the latest commit.
3. Run [release.sh](release.sh).

Example release statement:

```sh
VERSION=1.3.42 ./release.sh
```


[mosquitto-password-file]: https://mosquitto.org/man/mosquitto_passwd-1.html "Mosquitto password file"