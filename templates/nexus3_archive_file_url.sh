#!/bin/bash

curl_result=`curl -Is $1`

curl_rc=$?
if [ $curl_rc -ne 0 ]; then
  echo "http error. url: $1"
  exit $curl_rc
fi

location_header_found=`echo "$curl_result" | sed -n 's/^Location: \(.*\)/\1/p'`
if [ "$location_header_found" == "" ]; then
  echo $1
else
  bash $0 $location_header_found
fi
