# jenkins-remote-docker
A simple Dockerfile for a Jenkins with a remote Docker daemon

Any use of the `docker` command will be executed on the remote docker host, providing a way to sandbox Docker usage inside Jenkins.

- Use the `DOCKER_HOST` variable to specify the remote host.
- Use the `DOCKER_VERSION` variable to specify the local Docker version.
