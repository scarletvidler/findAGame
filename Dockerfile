FROM node:8

#ARGS
ARG WORKDIR=/opt/src/findAGame

#MAKEDIR
RUN mkdir -p ${WORKDIR}
WORKDIR ${WORKDIR}

#MAKEAPP
COPY . ${WORKDIR}
RUN npm install
RUN npm i -g typescript
RUN tsc -p .

EXPOSE 3000
CMD [ "node", "dist/index.js", "--env=prod" ]