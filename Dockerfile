FROM ubuntu

RUN apt-get update -yqq && \
  apt-get install -yqq \
  cpanminus \
  imagemagick \
  libimage-info-perl \
  libpdf-api2-perl \
  libwx-perl \
  perl
RUN cpanm chordpro

ENTRYPOINT ["/usr/local/bin/chordpro"]
