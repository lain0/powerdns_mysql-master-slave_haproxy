#!/bin/bash
set -ex
docker exec -it mysql_master bash
docker exec -it mysql_slave bash

