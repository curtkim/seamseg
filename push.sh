#!/bin/bash
NAME=seamseg

docker build -t curtkim/$NAME .
docker push curtkim/$NAME
