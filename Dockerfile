FROM ubuntu:trusty

RUN apt-get update && \
    apt-get install -y \
       software-properties-common 

RUN add-apt-repository ppa:philip5/extra && \
    apt-get update && \
    apt-get install -y \
	digikam=4:4.8.0-trusty~ppa1

ENV HOME /home/user-dk
RUN useradd --create-home --home-dir $HOME user-dk && \
	chown -R user-dk:user-dk $HOME

RUN echo "QT_X11_NO_MITSHM=1" >> /etc/environment

USER user-dk

RUN mkdir -p $HOME/.kde/share/config
VOLUME $HOME/.kde/share/config

ENV QT_X11_NO_MITSHM=1

ENTRYPOINT ["/usr/bin/digikam"]
