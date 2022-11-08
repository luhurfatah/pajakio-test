docker run -d --name influxdb -p 8086:8086 influxdb:2.3
docker build simpleservice/

influxdb_ip = docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' influxdb