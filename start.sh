#!/bin/bash

sudo chown -R 104:104 ./grafana
docker compose up -d
