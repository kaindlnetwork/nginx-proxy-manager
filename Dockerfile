FROM jc21/nginx-proxy-manager

MAINTAINER Fabian Kaindl <gitlab-docker@fabiankaindl.de>
# Add Healthcheck
HEALTHCHECK --interval=30s --timeout=3s --retries=5 --start-period=10s \
  CMD /bin/check-health
  
RUN apt-get update && \
    apt-get upgrade -y
RUN apt purge curl apt* -y
RUN rm -rf /var/lib/apt/
