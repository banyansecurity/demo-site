# Banyan Security Demo Site

A simple `nginx` Docker container that serves up a static website for demos.

### Usage

```bash
export INSTANCE_ID="MY AWESOME AWS EC2"
export PRIVATE_IP="1.2.3.4"
docker run -e INSTANCE_ID -e PRIVATE_IP -p 80:80 gcr.io/banyan-pub/demo-site
```

Navigate to `http://localhost` and you should see a simple website.