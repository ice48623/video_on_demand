#!/usr/bin/env bash

PIECES="rabbit vod_module vod_frontend vod_webapi vod_converter vod_like_worker vod_comment_worker nginx"

COMMAND="create"
FROM="--from-file=main_proxy.conf --from-file=nginx.conf"
VOD_MODULE="--from-file=vod_module.conf"

if ! type "kubectl" > /dev/null; then
	echo "Requires kubectl in PATH"
	exit 1
fi

while getopts :d opt; do
  case ${opt} in
    d )	COMMAND="delete"
		FROM="" ;;
    ? ) echo "Usage: $0 [-d]"
		exit 1 ;;
  esac
done

kubectl $COMMAND configmap nginx-config $FROM
kubectl $COMMAND configmap vod-module-config $VOD_MODULE

for PIECE in $PIECES; do
	for CONFIG in $(find ./pieces/$PIECE/*.yaml 2> /dev/null); do
		kubectl $COMMAND -f $CONFIG
	done
done
