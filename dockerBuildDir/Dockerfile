FROM base/devel

RUN ["/bin/bash", "-c", "pacman -Sy"]
RUN ["/bin/bash", "-c", "pacman --noconfirm -S python2 python nodejs gcc jre8-openjdk"]
RUN ["/bin/bash", "-c", "archlinux-java status"]
RUN ["/bin/bash", "-c", "archlinux-java get"]
RUN ["/bin/bash", "-c", "archlinux-java set java-8-openjdk/jre"]
