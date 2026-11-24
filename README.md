# Go Gin Example

[简体中文](README.zh-CN.md)

A Gin blog API example based on [EDDYCJY/go-gin-example](https://github.com/EDDYCJY/go-gin-example). Follow article and tag requests from JWT-protected routes through Redis caching and GORM-backed MySQL persistence. The repository also includes Swagger documentation, image uploads, Excel tag import and export, and QR-code poster generation.

## Read the code

| Location | What it shows |
| --- | --- |
| [routers/router.go](routers/router.go) | Route registration, including `POST /auth` and the JWT-protected `/api/v1` group. |
| [service](service) and [models](models) | Article and tag logic, caching and database access. |
| [docs/swagger.yaml](docs/swagger.yaml) | The Swagger specification bundled with the example. |

Use the route registration as the reference if the bundled Swagger specification shows a different method.

## Run locally

1. Install Go 1.18 or later, MySQL and Redis.
2. Create a `blog` database and import [docs/sql/blog.sql](docs/sql/blog.sql).
3. Set the local MySQL and Redis connection details in [conf/app.ini](conf/app.ini). Use a local JWT signing secret.
4. Start the service from the repository root.

```sh
go run .
```

Swagger UI is available at `http://localhost:8000/swagger/index.html` with the default port. The upstream [MIT license](https://github.com/EDDYCJY/go-gin-example/blob/master/LICENSE) provides the original project's license terms.
