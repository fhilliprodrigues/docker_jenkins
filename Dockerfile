FROM nginx:latest
MAINTAINER Fhillip Rodrigues
WORKDIR /usr/share/nginx/html
RUN echo "Site em docker personalizado" > index.html
EXPOSE 80
