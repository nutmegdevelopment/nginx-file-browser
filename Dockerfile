FROM harbor.ci.nutmeg.co.uk/dockerhub/library/nginx:1.21-alpine

# Patch vulnerabilities
RUN apk add --upgrade --no-cache \
      curl \
      libxml2

ADD default.conf /etc/nginx/conf.d/default.conf
ADD css/ /opt/www/file-browser/css/
ADD image/ /opt/www/file-browser/image/
ADD js/ /opt/www/file-browser/js/
ADD index.html /opt/www/file-browser/

VOLUME /opt/www/files/
EXPOSE 80
