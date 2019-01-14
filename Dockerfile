FROM fedora:29
RUN dnf install -q -y git clang fontconfig-devel freetype-devel libvorbis-devel libepoxy-devel \
    libwebp-devel boost-python3-devel python3-devel cmake ninja-build SDL2-devel openal-soft-devel \
    clang-tools-extra python3-PyYAML && \
    dnf clean all && \
    dbus-uuidgen > /var/lib/dbus/machine-id
ENV LANG en_US.utf-8
