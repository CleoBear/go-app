FROM golang:1.19

WORKDIR /app
COPY ./app .

RUN go mod download
RUN go build -o /go-app

EXPOSE 8080

CMD [ "/go-app" ]

