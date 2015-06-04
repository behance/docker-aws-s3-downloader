FROM       ubuntu:14.04
MAINTAINER BehanceRE <qa-behance@adobe.com>

VOLUME  ["/data"]
WORKDIR "/data"

RUN apt-get install curl python2.7 -y

ADD https://bootstrap.pypa.io/get-pip.py /get-pip.py
RUN sudo python2.7 /get-pip.py

RUN sudo pip install awscli

ADD download-s3-files /opt/behance/download-s3-files

ENTRYPOINT /opt/behance/download-s3-files
