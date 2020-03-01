FROM archlinux
RUN pacman -Syu --noconfirm gcc cmake make git vagrant && pacman -Scc && rm -rfv /var/cache/pacman/* /var/lib/pacman/sync/*
