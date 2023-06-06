**Kill a container**

	docker container kill ID_OF_CONTAINER

**Build an image**

	docker build -t NAME_FOR_CONTAINER PATH__FOLDER_WITH_DOCKERFILE

**Run a container**

	docker run NAME_OF_IMAGE
	docker run -d -p port:port id_of_image/container

**Restart All Containers**

	docker restart $(docker ps -a -q)


**Run simple alpine shell**

	docker run -it --rm alpine /bin/ash

**Remove All Images**

	docker image rm -f $(docker images -a -q)


**Start Docker containers from inside other containers**

	To achieve this the container launhcing other containers must be run with :
	
	-v /var/run/docker.sock:/var/run/docker.sock

**Restart container policy**

	docker container run -d --restart unless-stopped -v /tmp/twg.selenium/:/tmp/twg.selenium/ --name twg.selenium andremarcos/twg.selenium

**Push image to Repo**

	First login to the repo
		docker login --username:yourusername
	After that tag your image with the repo name
		docker image tag <IMAGE_ID> mainreponame/secondaryreponame:image_tag
	Finally push the image
		docker image push mainreponame/secondaryreponame:image_tag


**Run commands inside container**

	Run the following command to list all running Docker containers.
	docker ps
	Locate the name of the rarget container in the NAMES column.
	Start a bash shell by running the following command with the target container name.
	For example,
	docker exec -it <container_name> bash
	https://help.hcltechsw.com/commerce/9.0.0/developer/tasks/tigentercontainer.html