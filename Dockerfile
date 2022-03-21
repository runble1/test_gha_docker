FROM golang:1.18-alpine

WORKDIR /go/src/app

COPY . .

RUN go get -d -v ./...
RUN go build -v ./...

CMD ["./app"]