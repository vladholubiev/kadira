FROM ulexus/meteor

ENV RELEASE 1.4.3.2
ENV PORT 4000
ENV ROOT_URL http://localhost:4000

EXPOSE 4000

COPY kadira-ui.tar.gz /home/meteor/build.tar.gz

RUN mkdir -p /home/meteor/www && cd /home/meteor/www && \
    tar -xvf /home/meteor/build.tar.gz && \
    rm /home/meteor/build.tar.gz && \
    su - meteor && chown -R meteor:meteor /home
