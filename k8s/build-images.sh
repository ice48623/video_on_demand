#!/usr/bin/env bash
docker build -t tui95/vod-module https://github.com/ice48623/vod_module.git
docker push tui95/vod-module
docker build -t tui95/vod-frontend https://github.com/ice48623/vod_frontend.git
docker push tui95/vod-frontend
docker build -t tui95/vod-webapi https://github.com/ice48623/vod_webapi.git
docker push tui95/vod-webapi
docker build -t tui95/vod-converter https://github.com/ice48623/vod_converter.git
docker push tui95/vod-converter
docker build -t tui95/vod-like-worker https://github.com/ice48623/vod_like_worker.git
docker push tui95/vod-like-worker
docker build -t tui95/vod-comment-worker https://github.com/ice48623/vod_comment_worker.git
docker push tui95/vod-comment-worker
