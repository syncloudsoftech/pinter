ARG phpVersion=8.2

FROM php:${phpVersion}-cli-alpine

COPY --from=composer /usr/bin/composer /usr/local/bin/composer

RUN mkdir /tools

WORKDIR /tools

RUN composer require laravel/pint

ENV PATH="/tools/vendor/bin:$PATH"

RUN mkdir /workspace

WORKDIR /workspace

CMD [ "pint" ]
