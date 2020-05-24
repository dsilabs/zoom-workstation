#
# zoom workstation
#

FROM python:3.7

RUN apt-get update -yqq
RUN apt-get install -qqy mariadb-server > /dev/null

RUN pip install ZoomFoundry

RUN mkdir -p /work
COPY start.sh /work
WORKDIR /work

# run the server
EXPOSE 80
CMD ["/bin/bash", "start.sh"]
