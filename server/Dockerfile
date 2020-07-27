FROM golang:latest

RUN mkdir /go/src/work

WORKDIR /go/src/work

# ADD . /go/src/work

EXPOSE 8080

# mysqlのドライバをインストール
RUN go get github.com/go-sql-driver/mysql;

# sql-migrateのインストール
RUN go get github.com/rubenv/sql-migrate/...;

RUN cd /go/src/work

# RUN sql-migrate new users;

# ソースが変更された際にホットリロードを行う
RUN go get github.com/pilu/fresh
CMD ["fresh"]