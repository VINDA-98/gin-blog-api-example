.PHONY: build clean tool lint help

all: build

build:
	@go build -v -o gin-blog-api-example .

tool:
	go vet ./...; true
	gofmt -w .

lint:
	golint ./...

clean:
	rm -f gin-blog-api-example
	go clean -i .

help:
	@echo "make: compile packages and dependencies"
	@echo "make tool: run specified go tool"
	@echo "make lint: golint ./..."
	@echo "make clean: remove object files and cached files"
