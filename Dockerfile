FROM node
RUN npm install -g json-server
RUN mkdir /webapp
ADD db  /webapp
WORKDIR /webapp
CMD json-server --watch db.json --port 3000 --routes routes.json


