```sh
docker build -t openam:7.0 .
rm -fr data && mkdir data & chmod 777 data
docker run -d -p 80:8080 -v $PWD/data:/data --name openam --rm openam:7.0; docker logs -f openam
```
