FROM phusion/baseimage:0.11
MAINTAINER Lightmatter <hello@lightmatter.com>

ADD . /lm_build
RUN /lm_build/install.sh
RUN rm /etc/nginx/sites-enabled/default && rm /etc/nginx/sites-available/default
#turn cron off
RUN touch /etc/service/cron/down && chmod +x /etc/service/cron/down


RUN apt-get update && apt-get upgrade -y -o Dpkg::Options::="--force-confold"

CMD ["/sbin/my_init", "--skip-startup-files"]
EXPOSE 80 443
