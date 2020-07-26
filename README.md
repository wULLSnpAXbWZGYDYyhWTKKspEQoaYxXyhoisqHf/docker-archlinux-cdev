# docker-archlinux-cdev

[![Build Status](https://drone.dotya.ml/api/badges/wanderer/docker-archlinux-cdev/status.svg?ref=refs/heads/master)](https://drone.dotya.ml/wanderer/docker-archlinux-cdev)
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/immawanderer/archlinux-cdev)](https://hub.docker.com/r/immawanderer/archlinux-cdev/builds)
[![](https://images.microbadger.com/badges/version/immawanderer/archlinux-cdev.svg)](https://microbadger.com/images/immawanderer/archlinux-cdev)
[![](https://images.microbadger.com/badges/commit/immawanderer/archlinux-cdev.svg)](https://microbadger.com/images/immawanderer/archlinux-cdev)

This repository provides the Dockerfile to create a Docker image used for light C development (some goodies included).

The image is rebuilt approximately every hour to ensure it always has the latest packages.

push mirror lives in [this GitHub repo](https://github.com/wULLSnpAXbWZGYDYyhWTKKspEQoaYxXyhoisqHf/docker-archlinux-cdev)  
development happens on [this Gitea instance](https://git.dotya.ml/wanderer/docker-archlinux-cdev)

## What you get
* updated Arch Linux [image](https://hub.docker.com/r/immawanderer/archlinux) based on [base image](https://hub.docker.com/_/archlinux)
* gcc
* make
* cmake
* git
* valgrind

## Purpose
* light C development upon fresh package base
