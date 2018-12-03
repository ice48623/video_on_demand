#!/usr/bin/env bash
docker build -t vod_module git@github.com:ice48623/vod_module.git
docker build -t vod_frontend git@github.com:ice48623/vod_frontend.git
docker build -t vod_webapi git@github.com:ice48623/vod_webapi.git
docker build -t vod_converter git@github.com:ice48623/vod_converter.git
docker build -t vod_like_worker git@github.com:ice48623/vod_like_worker.git
docker build -t vod_comment_worker git@github.com:ice48623/vod_comment_worker.git
