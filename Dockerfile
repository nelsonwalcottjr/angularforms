FROM node:8

RUN node --version
RUN npm
RUN apt-get update && apt-get install -y build-essential && apt-get -y install sudo
RUN sudo apt-get -y update && sudo apt-get -y install pdftk && sudo apt-get -y install imagemagick ghostscript poppler-utils && sudo apt-get -y install -y default-jdk

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN npm install

EXPOSE 8000
CMD [ "npm", "run", "demo" ]
