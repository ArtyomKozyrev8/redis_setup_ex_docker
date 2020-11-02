FROM redis:6.0-alpine

WORKDIR /usr/src/app

RUN apk add --no-cache tzdata

ENV TZ=Europe/Moscow

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY redis.conf /usr/local/etc/redis/redis.conf

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

RUN chmod 0755 /usr/src/app/
