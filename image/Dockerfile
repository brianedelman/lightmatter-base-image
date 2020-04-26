FROM phusion/baseimage:0.11
MAINTAINER Lightmatter <hello@lightmatter.com>

ADD . /lm_build
RUN /lm_build/install.sh
#turn cron off
RUN touch /etc/service/cron/down && chmod +x /etc/service/cron/down


CMD ["/sbin/my_init", "--skip-startup-files"]
EXPOSE 80 443
