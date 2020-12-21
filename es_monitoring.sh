#!/bin/bash

QUERY=$(curl -s -X GET "localhost:9200/_cat/allocation?h=disk.*&format=json" | tr -d '[{" }]' | sed -e 's/:/=/g' | sed -e 's/,/ /g')
echo ${QUERY}
logger -p local5.notice -t ${QUERY}
