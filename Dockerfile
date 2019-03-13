FROM debian:testing

RUN apt-get update && apt-get install -y \
	netcat-openbsd

RUN setcap 'cap_net_bind_service=+ep' /bin/nc.openbsd

CMD ["bash"]
