FROM node:21.7-alpine3.19

RUN apk --update --no-cache add bash

RUN echo | npm install -g npm@10.5.2
RUN echo | npm install -g @angular/cli@17.3.4

WORKDIR /var/www

ADD docker-init.sh /home/
RUN chmod +x /home/docker-init.sh
CMD bash /home/docker-init.sh