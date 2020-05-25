# app-service-operator

这是一个使用 Operator Framework 开发 K8S Operator 的 demo。

这个 demo 创建了一个名为 AppService 的 CRD，只要指定以下参数，就能自动创建 Deployment，Service，接着再创建 istio 的 VirtualService，把 http 服务公开到外网。

```yaml
// 容器镜像，如： juntao2000/app-service-operator:20200525-105451
Image string

// Deployment 的副本数量
Size int32

// 容器的 http 端口
Port int32

// 对外公开的域名
Domain string
```
