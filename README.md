# Video on Demand Service [VOD]

## Description
An simple web application that serve video contennt using HLS streaming protocol.

## Features
- Video Streaming
- HLS Support
- Comment System
- Like System
- User Authentication

## Get Started

### Prerequisite

For MacOSX
```
brew install kubectl
brew cask install virtualbox minikube
```

### Clone the project
```
git clone --recurse-submodules git@github.com:ice48623/video_on_demand.git
```

### Start minikube
```
minikube start
```

### Using kubernetes's docker env
```
eval $(minikube docker-env)
```

### Build docker images
```
video_on_demand/k8s/build-images.sh
```

### Create kubernetes's deployment and services
```
video_on_demand/k8s/k8s.sh
```

### Modify host file
Add `<minikbe IP> vod.thanaphat.me` to host file

### Undoing all
```
video_on_demand/k8s/k8s.sh -d
minikube stop
eval $(minikube docker-env -u)
```
remove `<minikbe IP> vod.thanaphat.me` from host file

## Note

### To access kubernetes's dashboard
```
minikube dashboard
```

## Used technology
- Python Flask
- Vuejs
- Kubernetes
- Mongo DB
- Kaltura nginx-vod-module
- Nginx
- RabbitMQ

## Member
- [Thanaphat Teeradatchusuk](https://gitlab.com/ice48623)
- [Khemmatat Theanvanichpant](https://github.com/tui95)
- [Aphisit Areechitsakul](https://github.com/bright1h)
- [Chanin Chuthavanitchkul](https://github.com/CSVincent)
