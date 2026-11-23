FROM golang:latest

ENV GOPROXY https://goproxy.cn,direct
WORKDIR $GOPATH/src/github.com/VINDA-98/gin-blog-api-example
COPY . $GOPATH/src/github.com/VINDA-98/gin-blog-api-example
RUN go build -o gin-blog-api-example .

EXPOSE 8000
ENTRYPOINT ["./gin-blog-api-example"]
