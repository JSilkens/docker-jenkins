#!/bin/bash

echo "Updating CA trust"
sh /usr/bin/update-ca-trust

echo "Running s2i run script"
sh /usr/libexec/s2i/run
