FROM immawanderer/archlinux:latest

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://git.dotya.ml/wanderer/docker-archlinux-cdev.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.license=GPL-3.0

WORKDIR /tmp/
RUN pacman -Syu --noconfirm --ignore glibc --needed gcc cmake make git valgrind
RUN pacman --noconfirm -R $(pacman -Qdtq) || true
RUN pacman -Scc && rm -rfv /var/cache/pacman/* /var/lib/pacman/sync/* \
    && rm -rv /usr/share/info/* ;rm -rv /usr/share/man/* ; \
    rm -rv /usr/share/doc/* ;rm -r /usr/share/zoneinfo/* ;rm -rv /usr/share/i18n/*; \
    find /. -name "*~" -type f -delete; \
    find /usr/share/terminfo/. ! -name "*xterm*" ! -name "*screen*" ! -name "*screen*" -type f -delete; \
    rm -rfv /tmp/* || true
WORKDIR /
