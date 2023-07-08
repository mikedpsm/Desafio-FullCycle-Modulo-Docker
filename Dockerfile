FROM golang:1.15-alpine as builder

WORKDIR /app

COPY . .

RUN go build -o /app/rocks

FROM scratch

WORKDIR /app

COPY --from=builder /app/rocks ./main

CMD ["./main"]