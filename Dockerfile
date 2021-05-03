FROM node:14.16.1

LABEL version="1.0"
LABEL description="This is the base docker image"
LABEL maintainer="rokudynamics@gmail.com"

WORKDIR /app

COPY ["package.json", "yarn.lock", "./"]

RUN yarn install

COPY . .

ENTRYPOINT [ "yarn", "start" ]
