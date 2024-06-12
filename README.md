![unit tests](https://github.com/jonhough/AdaVec/actions/workflows/run-unit-tests.yaml/badge.svg)

# Adavec

A small ADA library for performing linear algebra operations with 2D, 3D, 4D matrices and vectors.

## Build the library

```sh
make build
```

## Run unit tests

The library uses `adaunit` for unit tests, and the tests can be run by the following command. This assumes the relevant dependencies exist on your local machine.

```sh
make run-unit-tests
```

As all dependencies may not be installed, it may be better to test in a docker container. See the following section for dockerized build and test instructions.

## Using docker

To test or build the library in a dockerized environment with all dependnecies installed, you can use
the following steps.

### Build image

To build the docker image, run the following command.

```sh
make docker-build-image
```

### Run unit tests in docker container

Once the docker image has been built we can run tests in a docker container by the following command.

```sh
make docker-run-unit-tests
```

## Test sample application

We can test a sample program that depends on `adavec` library.
If your local machine doesn't have all dependencies, you can run in the docker container.

```sh
docker run -it --rm adavec:latest bash
> make build
> cd sample
> ./run.sh
> ./bin/sample_program
```
