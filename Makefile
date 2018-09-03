.PHONY = install_jenkins remove_jenkins get_jenkins_password containers

install_jenkins:
	@docker run -d --name jenkins -p 8080:8080 jenkins:alpine
remove_jenkins:
	@docker stop jenkins
	@docker rm jenkins
get_jenkins_password:
	@docker logs jenkins
containers:
	@docker ps -a
