#!/bin/bash

set -e

exec bash -c \
  "exec varnishd -F -u varnish \
  -f /etc/varnish/default.vcl \
  -a :6081
  -T localhost:6082
  -S /etc/varnish/secret
  -s malloc,64m"
