#!/bin/bash

echo "Updating CA trust"
/usr/bin/update-ca-trust

echo "Running s2i run script"
exec /usr/libexec/s2i/run
