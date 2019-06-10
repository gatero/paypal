FROM golang:1.10.3
MAINTAINER @gatero <me@daniel-ortega.mx>
WORKDIR /go/src/app
COPY ./entry-point.sh /usr/local/bin
RUN go get -d -v github.com/golang/dep/cmd/dep && \
    go install -v github.com/golang/dep/cmd/dep && \
    go get -d -v github.com/markbates/refresh && \
    go install -v github.com/markbates/refresh
CMD ["./entry-point.sh"]
