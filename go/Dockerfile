FROM golang:1.17-alpine AS builder

WORKDIR /app

COPY . .

RUN go build -o myapp

FROM scratch

COPY --from=builder /app/myapp /myapp

CMD ["/myapp"]