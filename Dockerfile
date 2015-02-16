FROM python:2.7
WORKDIR /tmp
RUN wget http://nodejs.org/dist/v0.12.0/node-v0.12.0.tar.gz
RUN tar xz -f node-v0.12.0.tar.gz
RUN cd node-v0.12.0 && ./configure
RUN cd node-v0.12.0 && make && make install && make clean
RUN /usr/local/bin/npm install -g bower gulp
