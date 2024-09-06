FROM ubuntu:latest

COPY ./ ./

RUN apt-get update
RUN apt-get -y install npm
RUN ls
RUN npm install


EXPOSE 80 443

CMD [ "npm", "run" ]