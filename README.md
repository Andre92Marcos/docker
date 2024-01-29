# docker

## Overview


## Logs Rotation

Step 1: Go to the Docker daemon configuration file location:
On Linux: /etc/docker/ directory

Step 2: if daemon.json doesnt exist create it with:

	{
	"log-driver": "local",
		"log-opts": {
			"max-size": "10m",
			"max-file": "5"
		}
	}

Step 3: Restart docker

	systemctl restart docker

More Info:

	https://signoz.io/blog/docker-log-rotation/
	https://docs.docker.com/config/containers/logging/configure/