**Install oracle xe**

	docker pull alexeiled/docker-oracle-xe-11g

	docker run -d -p 49160:22 -p 49161:1521 -p 49162:8080 alexeiled/docker-oracle-xe-11g


**Install bash-completion**

	yum -y install bash-completion

	apt-get install bash-completion

	restart the console


**Docker Compose**

    #check https://github.com/docker/compose/releases for new release

    curl -L https://github.com/docker/compose/releases/download/1.24.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

    chmod +x /usr/local/bin/docker-compose

