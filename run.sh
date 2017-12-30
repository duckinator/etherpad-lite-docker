#!/bin/bash

docker build . -t duckinator/etherpad-lite &&
  docker run -d -p 9001:9001 duckinator/etherpad-lite
