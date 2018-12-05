#!/usr/bin/env bash

PIECES="rabbit vod-module vod-frontend vod-webapi vod-converter vod-like-worker vod-comment-worker nginx mongo nfs"

COMMAND="create"
FROM="--from-file=main_proxy.conf --from-file=nginx.conf"
MODULE="--from-file=vod_module.conf --from-file=nginx.conf"

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
kubectl $COMMAND configmap module-config $FROM

for PIECE in $PIECES; do
	for CONFIG in $(find ./pieces/$PIECE/*.yaml 2> /dev/null); do
		kubectl $COMMAND -f $CONFIG
	done
done
