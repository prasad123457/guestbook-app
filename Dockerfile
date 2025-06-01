FROM golang:1.16

WORKDIR /app

COPY main.go .
COPY public/style.css /app/public/style.css
COPY public/jquery.min.js /app/public/jquery.min.js

RUN go build -o guestbook

EXPOSE 3000

CMD ["./guestbook"]
