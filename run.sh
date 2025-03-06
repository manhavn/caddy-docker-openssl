# brew install mkcert
# mkcert -install
# cd certs && mkcert devs-MacBook-Pro.local

docker run --rm \
    -p 443:443 \
    -e IPV4PARRENT=$(ipconfig getifaddr en0) \
    -v ./caddyfile:/etc/caddy/Caddyfile \
    -v ./certs:/etc/certs \
    -it caddy:latest
