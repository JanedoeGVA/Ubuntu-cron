#!/bin/bash

chmod a+w /etc/nginx/conf.d/nginx.conf

sed -i "s|\${server_name}|$SERVER_NAME|" /etc/nginx/conf.d/nginx.conf
sed -i "s|\${general_consent_api_url}|$GENERAL_CONSENT_API_URL|" /etc/nginx/conf.d/nginx.conf
sed -i "s|\${fullchain_pem}|$FULLCHAIN_PEM|" /etc/nginx/conf.d/nginx.conf
sed -i "s|\${privkey_pem}|$PRIVKEY_PEM|" /etc/nginx/conf.d/nginx.conf
sed -i "s|\${dhparam_2048}|$DHPARAM|" /etc/nginx/conf.d/nginx.conf
sed -i "s|\${acme_path}|$ACME_PATH|" /etc/nginx/conf.d/nginx.conf

nginx -g 'daemon off;'
