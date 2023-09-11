FROM golang:1.17-alpine

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=arm go build -o todoapp 

EXPOSE 5001

ENTRYPOINT [ "/app/todoapp" ]