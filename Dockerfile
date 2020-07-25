FROM kong:2.1.0-alpine
LABEL type=gateway author=vincentmi
COPY  kong.yml /app/
ENV KONG_DATABASE=off \
KONG_DECLARATIVE_CONFIG=/app/kong.yml \
KONG_PROXY_ACCESS_LOG=/dev/stdout \ 
KONG_ADMIN_ACCESS_LOG=/dev/stdout \
KONG_PROXY_ERROR_LOG=/dev/stderr \ 
KONG_ADMIN_ERROR_LOG=/dev/stderr \
KONG_ADMIN_LISTEN="0.0.0.0:8001, 0.0.0.0:8444 ssl" 




