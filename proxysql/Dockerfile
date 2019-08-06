FROM debian:stretch
RUN set -ex; \
    apt-get update; \
	apt-get install -y gnupg apt-transport-https; \
	echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list; \
	apt-get update && apt-get install -y --fix-missing --allow-unauthenticated pmm-client; \
	apt-get remove --purge -y gnupg apt-transport-https; \
	apt-get autoremove -y --purge; \
	rm -rf /var/lib/apt/lists/* \
	true
COPY initpmm.sh /root/
COPY entrypoint.sh /root/
RUN chmod +x /root/entrypoint.sh
ENTRYPOINT [ "/root/entrypoint.sh" ]