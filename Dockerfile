FROM ubuntu:trusty
MAINTAINER Silvano Cirujano Cuesta <silvanociru@gmx.net>

RUN apt-get update && \
    apt-get install -y \
       software-properties-common && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN add-apt-repository ppa:philip5/extra && \
    apt-get update && \
    apt-get install -y \
	--no-install-recommends \
	kipi-plugins \
	digikam=4:4.12.0-trusty~ppa1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV HOME /home/user-dk
RUN useradd --create-home --home-dir $HOME user-dk && \
	chown -R user-dk:user-dk $HOME

RUN echo "QT_X11_NO_MITSHM=1" >> /etc/environment

USER user-dk

RUN mkdir -p $HOME/.kde/share
VOLUME $HOME/.kde/share

ENV QT_X11_NO_MITSHM=1

ENTRYPOINT ["/usr/bin/digikam"]
