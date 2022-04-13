FROM amd64/nginx
MAINTAINER Banyan Support support@banyansecurity.io

COPY html /usr/share/nginx/html
COPY run.sh /run.sh

ENTRYPOINT [ "/run.sh" ]