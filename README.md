# pinter

Lightweight (based on [Alpine](https://www.alpinelinux.org/)) [Docker](https://www.docker.com) image for running [laravel/pint](https://github.com/laravel/pint) code-style fixer regardless of [Laravel](https://laravel.com/) or [PHP](https://www.php.net/) version you may have.

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/syncloudsoftech/pinter/cd)
![Docker Pulls](https://img.shields.io/docker/pulls/syncloudsoftech/pinter)

## Usage

To use this image, you must have [Docker](https://www.docker.com) installed.
If already, run the below command in your [Laravel](https://laravel.com/) or [PHP](https://www.php.net/) project folder:

```shell
$ docker run -it --rm -v $PWD:/workspace syncloudsoftech/pinter
```

You can pass options to pint such as a `--preset` (default is `laravel`) or `--test` easily as below:

```shell
$ docker run -it --rm -v $PWD:/workspace syncloudsoftech/pinter --preset psr12
```

## Development

Building or modifying the container yourself from source is also quite easy.
Just clone the repository and run below command:

```shell
$ docker build -t pinter .
```

Run the locally built container as follows:

```shell
$ docker run -it --rm -v $PWD:/workspace pinter
```

## License

See the [LICENSE](LICENSE) file.
