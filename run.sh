docker run --rm \
    -p 443:443 \
    -e IPV4PARRENT=$(ipconfig getifaddr en0) \
    -v ./caddyfile:/etc/caddy/Caddyfile \
    -it caddy:latest
