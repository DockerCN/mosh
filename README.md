# docker-mosh

sshd running in Ubuntu docker container, you can use mosh to login the container.

Running custa/docker-mosh:
---

	docker run -d --restart=always --name mosh --hostname mosh -p 3333:22 \
		-p 60001-60020:60001-60020/udp \
		-e "ROOT_PASSWORD=${ROOT_PASSWORD}" \
		-e "AUTHORIZED_KEYS=ssh-rsa AAA..." \
		custa/docker-mosh

Login container by mosh:
---
	mosh root@<docker host> --ssh="ssh -p 3333 -i <id_rsa>"
