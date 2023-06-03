# Troubleshoot

## permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock

	sudo usermod -a -G docker [user]
	You can check it was successful by doing grep docker /etc/group and see something like this:
		docker:x:998:[user]
	logout and login

	https://stackoverflow.com/questions/47854463/docker-got-permission-denied-while-trying-to-connect-to-the-docker-daemon-socke