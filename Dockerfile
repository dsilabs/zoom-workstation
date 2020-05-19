#
# zoom workstation
#

FROM python:3.7

# update apt database
RUN apt update -yqq

# install MariaDB
RUN apt install -qqy mariadb-server

# install some utilities
RUN apt install -yqq vim

# install ZoomFoundry
RUN pip install ZoomFoundry

# install startup script
RUN mkdir -p /work/web/sites/localhost
WORKDIR /work
ADD start.sh /work

# run the server
CMD ["/bin/bash", "start.sh"]
