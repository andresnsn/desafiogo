FROM golang:1.23 AS builder

WORKDIR /app

COPY . .

RUN go build main.go

FROM scratch

COPY --from=builder app/main /main

CMD ["/main"]