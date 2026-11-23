# Go Gin 示例

[English](README.md)

一个基于 [EDDYCJY/go-gin-example](https://github.com/EDDYCJY/go-gin-example) 的 Gin 博客 API 示例。代码包括文章和标签的增删改查、JWT 中间件、GORM 与 MySQL 持久化、Redis 缓存和 Swagger 文档。仓库也包含图片上传、标签 Excel 导入导出，以及带二维码的文章海报生成示例。

## 阅读代码

| 位置 | 内容 |
| --- | --- |
| [routers/router.go](routers/router.go) | 注册路由，包括 `POST /auth` 和使用 JWT 校验的 `/api/v1` 路由组。 |
| [service](service) 和 [models](models) | 文章与标签的业务逻辑、缓存和数据库访问。 |
| [docs/swagger.yaml](docs/swagger.yaml) | 仓库附带的 Swagger 定义。 |

如果 Swagger 记录的方法与实际路由不同，以路由注册为准。

## 本地运行

1. 安装 Go 1.18 或更新版本、MySQL 和 Redis。
2. 新建 `blog` 数据库并导入 [docs/sql/blog.sql](docs/sql/blog.sql)。
3. 在 [conf/app.ini](conf/app.ini) 配置本地 MySQL 和 Redis 连接，并设置本地 JWT 签名密钥。
4. 在仓库根目录启动服务。

```sh
go run .
```

默认端口下的 Swagger UI 地址是 `http://localhost:8000/swagger/index.html`。原项目的授权条款见上游 [MIT 许可证](https://github.com/EDDYCJY/go-gin-example/blob/master/LICENSE)。
