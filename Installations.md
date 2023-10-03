**Install Docker**

	https://docs.docker.com/engine/install/debian/

**Install oracle xe**

	docker pull alexeiled/docker-oracle-xe-11g

	docker run -d -p 49160:22 -p 49161:1521 -p 49162:8080 alexeiled/docker-oracle-xe-11g


**Install bash-completion**

	yum -y install bash-completion

	apt-get install bash-completion

	restart the console


**Docker Compose**

	sudo apt-get install docker-compose-plugin

	check https://docs.docker.com/engine/install/debian/ for more details
