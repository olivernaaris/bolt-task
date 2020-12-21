#!/bin/bash

pitd=$(ps -ef | grep -w 'nc -l 8108' | grep -v grep | awk  '{ print $2 }')

kill -9 $pitd

echo "Netcat HTTP server stopped"
