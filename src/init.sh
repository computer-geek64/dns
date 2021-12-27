#!/bin/bash
# init.sh

/usr/sbin/unbound
/s6-init "$@"
