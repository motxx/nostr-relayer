FROM golang:1.22.1-alpine3.19 as builder

WORKDIR /go/src/app
COPY . .
RUN go install

WORKDIR /go/src/app/cmd
RUN go build -o relay

FROM alpine as final

EXPOSE 2700
EXPOSE 7447

COPY --from=builder /go/src/app/cmd/relay /bin/relay
RUN apk add --no-cache ca-certificates

ENTRYPOINT ["/bin/relay"]
