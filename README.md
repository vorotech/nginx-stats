# nginx-stats example

Very simple example of the `ngx_http_stub_status_module` module usage.

The image built from this repo is available at DockerHub `vorotech/nginx-stats`

The NGINX servers metrics are exposed at `http://localhost:8080/stub_status`.
The idea is to simplify security group ingress rules setup
(the reason of non-default port) when deployed to managed environment (e.g. AWS ECS) 

The `stub_path` path at port `:8080` will be only used by [nginx-prometheus-exporter](https://github.com/nginxinc/nginx-prometheus-exporter) sidecard contianer.

To see how it works run `docker-compose up -d` and open http://localhost:5000 (bound to NGINX) and http://localhost:9113/metrics (bound to exporter) at separate tabs.
