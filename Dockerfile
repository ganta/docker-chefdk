FROM ubuntu:12.04
MAINTAINER Hideki IGARASHI <hideki.develop@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

ADD https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.2.0-2_amd64.deb /tmp/chefdk.deb
RUN dpkg -i /tmp/chefdk.deb

RUN mkdir /srv/chef-repos
VOLUME ["/srv/chef-repos"]
WORKDIR /srv/chef-repos
