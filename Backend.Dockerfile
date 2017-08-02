FROM centos:centos6
MAINTAINER The CentOS Project <cloud-ops@centos.org>

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install wget; yum clean all

# Install NodeJS 6.x repository
RUN curl -sL https://rpm.nodesource.com/setup_6.x | bash -

# Install NodeJS and npm
RUN yum -y install nodejs; yum clean all

COPY ./src/rapido-backend rapido-backend/
WORKDIR rapido-backend/
RUN npm install

EXPOSE 80

ENV RAPIDO_DATABASE_NAME="rapido" \
  RAPIDO_DATABASE_USER="postgres" \
  RAPIDO_DATABASE_PASSWORD="password" \
  RAPIDO_PORT="80"

CMD ["npm", "start"]
