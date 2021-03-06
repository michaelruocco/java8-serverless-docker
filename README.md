# Java 8 + Serverless Docker

This project builds a docker image that has both Java 8 and the serverless
framework installed. The primary intended use is for gitlab CI processes that
need to build and deploy AWS Lambda functions written in Java.

The base image is 3.6 (latest) Alpine Linux and it has the following software
versions installed:

* java: 1.8.0_131
* node: v6.10.3
* npm: v3.10.10
* serverless: 1.18.0

The image is also available on dockerhub, you can pull it by running the
following command:

```
docker pull michaelruocco/alpine-java8-serverless
```

To run an container using the image you can run the following:

```
docker run -it michaelruocco/alpine-java8-serverless /bin/bash
```
