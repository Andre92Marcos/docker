# Restart container policy

docker container run -d --restart unless-stopped -v /tmp/twg.selenium/:/tmp/twg.selenium/ --name twg.selenium andremarcos/twg.selenium