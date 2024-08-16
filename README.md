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
