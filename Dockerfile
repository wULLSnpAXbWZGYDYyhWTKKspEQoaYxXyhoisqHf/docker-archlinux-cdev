# syntax=docker/dockerfile:1.2
FROM immawanderer/archlinux:linux-amd64

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://git.dotya.ml/wanderer/docker-archlinux-cdev.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.license=GPL-3.0

RUN pacman --version

RUN pacman -Syu --noconfirm --needed gcc cmake make git valgrind
RUN pacman --noconfirm -Rn "$(pacman -Qdtq)" || true
RUN pacman -Scc && rm -rf /var/cache/pacman/* /var/lib/pacman/sync/* \
    && rm -rf /usr/share/info/* ;rm -rf /usr/share/man/* ; \
    rm -rf /usr/share/doc/* ;rm -rf /usr/share/zoneinfo/* ;rm -rf /usr/share/i18n/*; \
    find /. -name "*~" -type f -delete; \
    find /usr/share/terminfo/. ! -name "*xterm*" ! -name "*screen*" ! -name "*screen*" -type f -delete;
