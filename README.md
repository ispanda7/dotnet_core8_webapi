# dotnet_core8_webapi


### Docker Build & Run & Push to Dockerhub

~~~bash
docker build -t dotnet_core8_webapi .
docker run -d -p 5000:80 --name dotnet_core8_webapi dotnet_core8_webapi
docker tag dotnet_core8_webapi ispanda7/dotnet_core8_webapi:latest
docker push ispanda7/dotnet_core8_webapi:latest
~~~

### Run test Api

~~~bash
curl -X 'GET' \
  'http://localhost:5001/weatherforecast' \
  -H 'accept: application/json'
~~~

[Deploy dockder image to kubernete](https://medium.com/tech-blogs-by-nest-digital/how-to-easily-deploy-an-api-with-net-core-to-kubernetes-on-docker-dd2b5e978d75)