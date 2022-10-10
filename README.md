# docker-archlinux-cdev

[![Build Status](https://drone.dotya.ml/api/badges/wanderer/docker-archlinux-cdev/status.svg?ref=refs/heads/master)](https://drone.dotya.ml/wanderer/docker-archlinux-cdev)

This repository provides the Dockerfile to create a Docker image used for light C development (some goodies included).

## :warning: :construction: DockerHub issue :construction: :warning:
unless you're running Arch (or a Fedora 34+ or some reasonably recent thing) as your host OS, please make sure you read through the following issue write-up (since DH issue affects the base image it affects this one, too) \
⇒ https://git.dotya.ml/wanderer/docker-archlinux/issues/1 \
:warning: :construction: :construction: :construction: :warning:

The image is rebuilt approximately every hour to ensure it always has the latest packages.

The image is rebuilt <del>approximately every hour</del> nightly to ensure it always has the latest packages.

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
