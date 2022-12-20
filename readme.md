
# How to build docker image

```bash
cd folder

docker buildx build --push --platform linux/amd64,linux/arm64/v8 . --tag dylanops/kube-php:0.0.1

```

# Push docker image to docker hub

```bash
docker build . -t dylanops/kube-php:0.0.2

docker login
docker push name/mysite
```

# Push container to cluser

```bash
```