#!/bin/sh

# docker run --rm  --name kong \
#      -v "`pwd`:/usr/local/kong/declarative" \
#      -e "KONG_DATABASE=off" \
#      -e "KONG_DECLARATIVE_CONFIG=/usr/local/kong/declarative/kong.yml" \
#      -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" \
#      -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" \
#      -e "KONG_PROXY_ERROR_LOG=/dev/stderr" \
#      -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" \
#      -e "KONG_ADMIN_LISTEN=0.0.0.0:8001, 0.0.0.0:8443 ssl" \
#      -p 80:8000 \
#      -p 443:8443 \
#      -p 127.0.0.1:8001:8001 \
#      -p 127.0.0.1:8444:8444 \
#      kong:2.1.0-alpine

#!/bin/sh

docker run -d   --restart=always --name kong \
     -v "`pwd`:/usr/local/kong/declarative" \
     -e "KONG_DATABASE=off" \
     -e "KONG_DECLARATIVE_CONFIG=/usr/local/kong/declarative/kong.yml" \
     -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" \
     -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" \
     -e "KONG_PROXY_ERROR_LOG=/dev/stderr" \
     -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" \
     -e "KONG_ADMIN_LISTEN=0.0.0.0:8001" \
     -p 80:8000 \
     -p 127.0.0.1:8001:8001 \
     kong:2.1.0-alpine