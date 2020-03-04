FROM archlinux/base

ENV container=docker

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/wULLSnpAXbWZGYDYyhWTKKspEQoaYxXyhoisqHf/docker-archlinux-cdev.git" \
      org.label-schema.vcs-ref=$VCS_REF

RUN pacman -Syu --noconfirm --needed gcc cmake make git valgrind \
    && pacman -Scc \
    && rm -rfv /var/cache/pacman/* /var/lib/pacman/sync/*
