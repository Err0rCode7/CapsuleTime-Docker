From node:12-alpine

RUN apk --update --no-cache add tzdata bash curl vim git \
    && cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime \
    && echo "Asia/Seoul" > /etc/timezone \
    && apk del tzdata

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY ./app/package.json /usr/src/app/

RUN npm install

COPY ./app /usr/src/app
COPY wait-for-it.sh /

RUN chmod +x /wait-for-it.sh

CMD /wait-for-it.sh db:3306 -- npm start

