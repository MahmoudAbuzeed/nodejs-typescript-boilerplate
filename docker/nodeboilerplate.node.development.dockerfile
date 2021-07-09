FROM node:latest

LABEL author="Mahmoud Abozeed"
WORKDIR /nodeboilerplate

RUN npm install -g pm2@latest
RUN npm install -g nodemon
RUN pm2 install typescript
RUN mkdir -p /var/log/pm2
EXPOSE 8000
RUN npm rebuild

ENTRYPOINT ["/bin/bash", "./docker/scripts/nodeboilerplate.sh"]
