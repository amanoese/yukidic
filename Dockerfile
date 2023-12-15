FROM node:20

VOLUME /app
WORKDIR /app

## init
RUN git clone https://github.com/amanoese/kuromojijs-dict-maker.git
WORKDIR /app/kuromojijs-dict-maker
RUN npm install

## build
COPY words/ /app/kuromojijs-dict-maker/words/
RUN npm run build

## test dic
#RUN npm run test-dict

