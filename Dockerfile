FROM golang:alpine as builder

WORKDIR /hello

COPY . .

RUN go build -o main

FROM scratch

COPY --from=builder /hello .

CMD ["./main"]
