# Let's Encrypt with certbot-dns-route53 (Docker)

## USAGE

### Build docker image

```
docker build -t local/certbot_r53 .
```

### Run

```
docker run --rm \
    -v $(pwd)/letsencrypt:/etc/letsencrypt \
    -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
    -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
    -e EMAIL=${EMAIL} \
    -e DOMAINS="example.com,*.example.com" \
    local/certbot_r53
```

Use staging CA server to test.

```
docker run --rm \
    -v $(pwd)/letsencrypt:/etc/letsencrypt \
    -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
    -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
    -e EMAIL=${EMAIL} \
    -e DOMAINS="example.com,*.example.com" \
    -e USE_STAGING_SERVER=1 \
    local/certbot_r53
```
