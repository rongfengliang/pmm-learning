FROM mysql:5.7.16
RUN set -ex; \
    apt-get update; \
	apt-get install -y gnupg apt-transport-https; \
	echo 'deb https://repo.percona.com/apt stretch main' > /etc/apt/sources.list.d/percona.list; \
	apt-get update && apt-get install -y  --allow-unauthenticated pmm-client; \
	apt-get remove --purge --force-yes -y  apt-transport-https; \
	apt-get autoremove -y --force-yes --purge; \
	rm -rf /var/lib/apt/lists/* \
	true
COPY initpmm.sh /root/