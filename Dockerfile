FROM jc21/nginx-proxy-manager

ARG DEBIAN_FRONTEND=noninteractive

MAINTAINER Fabian Kaindl <gitlab-docker@fabiankaindl.de>
# Add Healthcheck
HEALTHCHECK --interval=30s --timeout=3s --retries=5 --start-period=10s \
  CMD /bin/check-health
  
RUN apt-get update && \
    apt-get upgrade -y
#RUN apt purge curl* bash apt* -y --allow-remove-essentia
#RUN rm -rf /var/lib/apt/ /usr/share/doc/apt /var/cache/apt/ /etc/apt/ /usr/lib/apt/ /home /media /root /bin /usr/games
