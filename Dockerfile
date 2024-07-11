FROM golang:1.17.5-alpine as builder

WORKDIR /go

COPY main.go .

RUN go build main.go

FROM scratch

COPY --from=builder /go/main .

CMD ["./main"]