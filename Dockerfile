FROM jc21/nginx-proxy-manager

MAINTAINER Fabian Kaindl <gitlab-docker@fabiankaindl.de>
# Add Healthcheck
HEALTHCHECK --interval=30s --timeout=3s \
  CMD /bin/check-health
