FROM alpine:3.16
ARG PHP_VERSION=8 \
  DB_NAME \
  DB_USER \
  DB_PASS
RUN apk update && apk upgrade && apk add --no-cache \
  php${PHP_VERSION} \
  php${PHP_VERSION}-fpm \
  php${PHP_VERSION}-mysqli \
  php${PHP_VERSION}-json \
  php${PHP_VERSION}-mbstring \
  php${PHP_VERSION}-openssl \
  php${PHP_VERSION}-xml \
  php${PHP_VERSION}-redis \
  php${PHP_VERSION}-phar \
  php${PHP_VERSION}-ctype \
  wget && \
  sed -i "s|listen = 127.0.0.1:9000|listen = 9000|g" \
  /etc/php8/php-fpm.d/www.conf && \
  rm -f /var/cache/apk/*
WORKDIR /var/www
COPY ./requirements/wordpress/conf/wp-config-create.sh .
RUN sh wp-config-create.sh && rm wp-config-create.sh && \
  chmod -R 0777 wp-content/
COPY ./requirements/wordpress/tools/run.sh .
RUN chmod +x run.sh
CMD [ "./run.sh" ]
