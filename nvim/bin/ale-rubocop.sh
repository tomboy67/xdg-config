#!/usr/bin/env bash

docker-compose exec -T web rubocop "$@"
