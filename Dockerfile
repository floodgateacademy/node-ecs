FROM centos:centos6

RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

RUN yum install -y npm
RUN yum install -y rubygems
RUN gem install -y sass

RUN npm install -g grunt-cli
RUN npm install -g bower
RUN npm install -g express
RUN npm install grunt-contrib-sass --save-dev

ADD . /src
RUN chmod -R 700 /src

WORKDIR /src

EXPOSE 9090 35729

# ENTRYPOINT ["/src/env.sh"]

CMD ["node", "index.js"]
