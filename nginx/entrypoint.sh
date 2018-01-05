#!/usr/bin/env bash
certbot --nginx -d $SERVER_NAME -m $SERVER_EMAIL --agree-tos || true
nginx