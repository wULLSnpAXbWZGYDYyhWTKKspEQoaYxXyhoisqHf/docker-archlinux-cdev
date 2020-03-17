# docker-archlinux-cdev

[![Build Status](https://drone.dotya.ml/api/badges/wanderer/docker-archlinux-cdev/status.svg?ref=refs/heads/master)](https://drone.dotya.ml/wanderer/docker-archlinux-cdev) [![](https://images.microbadger.com/badges/version/immawanderer/archlinux-cdev.svg)](https://microbadger.com/images/immawanderer/archlinux-cdev) [![](https://images.microbadger.com/badges/commit/immawanderer/archlinux-cdev.svg)](https://microbadger.com/images/immawanderer/archlinux-cdev)

This repository provides the Dockerfile to create a Docker image used for light C development (some goodies included).

The image is rebuilt approximately every hour to ensure it always has the latest packages.

## What you get
* updated Arch Linux [base image](https://hub.docker.com/_/archlinux)
* gcc
* make
* cmake
* git
* valgrind

## Purpose
* light C development upon fresh package base
