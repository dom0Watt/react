FROM node

RUN mkdir -p /home/flux/app
RUN cd /home/flux/app

RUN npm install -g gulp
RUN npm install gulp --save-devs


WORKDIR /home/flux/app

COPY . /home/flux/app

RUN npm install browserify reactify vinyl-source-stream react react-router react-dom
