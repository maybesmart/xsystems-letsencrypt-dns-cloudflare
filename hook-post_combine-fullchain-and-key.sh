#!/bin/sh

set -e

for DOMAIN in ${LETSENCRYPT_DOMAINS} ; do
  echo "Creating /etc/letsencrypt/full/${DOMAIN}.pem"
  cat /etc/letsencrypt/live/${DOMAIN}/fullchain.pem \
      /etc/letsencrypt/live/${DOMAIN}/privkey.pem \
      > /etc/letsencrypt/full/${DOMAIN}.pem
done
