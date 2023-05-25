FROM golang:1.17-alpine

WORKDIR /app/aleemantap/

COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /goa

EXPOSE 3000

CMD ["/goa"]