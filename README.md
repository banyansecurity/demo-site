# Banyan Security Demo Site

A simple `nginx` Docker container that serves up a static website for demos.

### Usage

```bash
export INSTANCE_ID="MY AWESOME AWS EC2"
export PRIVATE_IP="1.2.3.4"
docker run -e INSTANCE_ID -e PRIVATE_IP -p 80:80 gcr.io/banyan-pub/demo-site
```

Navigate to `http://localhost` and you should see a simple website.


### Build

Be sure to do a [multi-arch build](https://docs.docker.com/desktop/multi-arch/) so this container can run on multiple platforms.

```bash
 docker buildx create --name mybuilder
 docker buildx use mybuilder
 docker buildx build --platform=linux/amd64,linux/arm64 --push -t gcr.io/banyan-pub/demo-site .
```