# Docker container for gget

Dockerfile for [gget](https://github.com/pachterlab/gget): a free and open-source command-line tool and Python package that enables efficient querying of genomic databases

It's on [dockerhub](https://hub.docker.com/r/naotokubota/gget) and [github](https://github.com/NaotoKubota/gget).

## tags and links
- `0.27.2-conda` [(master/Dockerfile)](https://github.com/NaotoKubota/gget/blob/master/Dockerfile)

## how to build

```sh
docker pull naotokubota/gget:0.27.2-conda
```

or

```sh
git clone git@github.com:NaotoKubota/gget.git
cd gget
docker build --rm -t naotokubota/gget:0.27.2-conda .
```

## running

```sh
docker run --rm -it naotokubota/gget:0.27.2-conda
```