FROM centos:6.8

COPY ["bin/install-znc-build-deps", "/usr/local/bin/"]
RUN ["install-znc-build-deps"]

COPY ["bin/build-znc", "/usr/local/bin/"]

CMD ["build-znc"]
