#!/usr/bin/env bash
docker build -t vod-module https://github.com/ice48623/vod_module.git
docker build -t vod-frontend https://github.com/ice48623/vod_frontend.git
docker build -t vod-webapi https://github.com/ice48623/vod_webapi.git
docker build -t vod-converter https://github.com/ice48623/vod_converter.git
docker build -t vod-like-worker https://github.com/ice48623/vod_like_worker.git
docker build -t vod-comment-worker https://github.com/ice48623/vod_comment_worker.git
