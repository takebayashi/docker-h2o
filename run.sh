#!/bin/bash

APP_PORT="${H2O_APP_NAME^^}_PORT_${H2O_APP_PORT}_TCP_PORT"
APP_ADDR="${H2O_APP_NAME^^}_PORT_${H2O_APP_PORT}_TCP_ADDR"

cat > h2o.conf <<EOS
listen:
  port: $H2O_LISTEN_PORT
hosts:
  default:
    paths:
      /:
        proxy.reverse.url: http://${!APP_ADDR}:${!APP_PORT}/
EOS

h2o -c h2o.conf

