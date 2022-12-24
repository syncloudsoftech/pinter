FROM php:8.1-cli-alpine

COPY --from=composer /usr/bin/composer /usr/local/bin/composer

RUN mkdir /tools

WORKDIR /tools

RUN composer require laravel/pint

ENTRYPOINT [ "/tools/vendor/bin/pint" ]

RUN mkdir /workspace

WORKDIR /workspace
