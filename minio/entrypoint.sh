#!/bin/sh
set -e

echo Starting autoconfig...

mc alias set local http://s3:9000 $MINIO_ROOT_USER $MINIO_ROOT_PASSWORD

mc mb --ignore-existing local/avatars
mc anonymous set download local/avatars
