FROM archlinux
RUN pacman -Syu --noconfirm --needed gcc cmake make git valgrind && pacman -Scc && rm -rfv /var/cache/pacman/* /var/lib/pacman/sync/*
