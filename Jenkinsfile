Started by user test

Obtained Jenkinsfile from git https://github.com/alinerose-design/Aromatica_et_Balance.git
[Pipeline] Start of Pipeline
[Pipeline] node
Running on Jenkins
 in /var/jenkins_home/workspace/hello-world-pipeline
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Declarative: Checkout SCM)
[Pipeline] checkout
The recommended git tool is: git
No credentials specified
 > git rev-parse --resolve-git-dir /var/jenkins_home/workspace/hello-world-pipeline/.git # timeout=10
Fetching changes from the remote Git repository
 > git config remote.origin.url https://github.com/alinerose-design/Aromatica_et_Balance.git # timeout=10
Fetching upstream changes from https://github.com/alinerose-design/Aromatica_et_Balance.git
 > git --version # timeout=10
 > git --version # 'git version 2.47.3'
 > git fetch --tags --force --progress -- https://github.com/alinerose-design/Aromatica_et_Balance.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/main^{commit} # timeout=10
Checking out Revision af8cb0b15f4d4e8d5cbca024b12fa0d679139f24 (refs/remotes/origin/main)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f af8cb0b15f4d4e8d5cbca024b12fa0d679139f24 # timeout=10
Commit message: "Update Jenkinsfile"
 > git rev-list --no-walk af8cb0b15f4d4e8d5cbca024b12fa0d679139f24 # timeout=10
[Pipeline] }
[Pipeline] // stage
[Pipeline] withEnv
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Clone Repository)
[Pipeline] git
The recommended git tool is: git
No credentials specified
 > git rev-parse --resolve-git-dir /var/jenkins_home/workspace/hello-world-pipeline/.git # timeout=10
Fetching changes from the remote Git repository
 > git config remote.origin.url https://github.com/alinerose-design/Aromatica_et_Balance.git # timeout=10
Fetching upstream changes from https://github.com/alinerose-design/Aromatica_et_Balance.git
 > git --version # timeout=10
 > git --version # 'git version 2.47.3'
 > git fetch --tags --force --progress -- https://github.com/alinerose-design/Aromatica_et_Balance.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/main^{commit} # timeout=10
Checking out Revision af8cb0b15f4d4e8d5cbca024b12fa0d679139f24 (refs/remotes/origin/main)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f af8cb0b15f4d4e8d5cbca024b12fa0d679139f24 # timeout=10
 > git branch -a -v --no-abbrev # timeout=10
 > git branch -D main # timeout=10
 > git checkout -b main af8cb0b15f4d4e8d5cbca024b12fa0d679139f24 # timeout=10
Commit message: "Update Jenkinsfile"
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Test Docker)
[Pipeline] sh
+ docker version
Client:
 Version:           26.1.5+dfsg1
 API version:       1.45
 Go version:        go1.24.4
 Git commit:        a72d7cd
 Built:             Sun Mar  8 15:28:39 2026
 OS/Arch:           linux/amd64
 Context:           default

Server: Docker Desktop 4.62.0 (219486)
 Engine:
  Version:          29.2.1
  API version:      1.53 (minimum version 1.44)
  Go version:       go1.25.6
  Git commit:       6bc6209
  Built:            Mon Feb  2 17:17:24 2026
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          v2.2.1
  GitCommit:        dea7da592f5d1d2b7755e3a161be07f43fad8f75
 runc:
  Version:          1.3.4
  GitCommit:        v1.3.4-0-gd6d73eb8
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Run Build/Tests)
[Pipeline] sh
+ echo Build or test your project here
Build or test your project here
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Build Docker Image)
[Pipeline] sh
+ docker build -t alinerose/aromatica-app .
#0 building with "default" instance using docker driver

#1 [internal] load build definition from Dockerfile
#1 transferring dockerfile: 217B done
#1 DONE 0.0s

#2 [internal] load metadata for docker.io/library/nginx:alpine
#2 DONE 0.5s

#3 [internal] load .dockerignore
#3 transferring context: 2B done
#3 DONE 0.0s

#4 [internal] load build context
#4 transferring context: 48.27kB 0.0s done
#4 DONE 0.0s

#5 [1/2] FROM docker.io/library/nginx:alpine@sha256:f46cb72c7df02710e693e863a983ac42f6a9579058a59a35f1ae36c9958e4ce0
#5 resolve docker.io/library/nginx:alpine@sha256:f46cb72c7df02710e693e863a983ac42f6a9579058a59a35f1ae36c9958e4ce0 0.0s done
#5 CACHED

#6 [2/2] COPY . /usr/share/nginx/html
#6 DONE 0.1s

#7 exporting to image
#7 exporting layers
#7 exporting layers 1.3s done
#7 exporting manifest sha256:6188b060b736defb4060d2c6a10d704fdde60763f7b39fae189bf656f6f592f4 0.0s done
#7 exporting config sha256:f17c0103d47cb2b7cba0bc19c3853f78624b9abf68d8c2410ae45d7828fecb9c 0.0s done
#7 exporting attestation manifest sha256:5b4a604a1dbb6b8bc55877c2ba4fd6c2c7735d5fe4ba0859d39e5d513bcec277 0.0s done
#7 exporting manifest list sha256:229b97a272bf70102f4d40624eb866d902d9976a197d3b70326f21455504ca15 0.0s done
#7 naming to docker.io/alinerose/aromatica-app:latest done
#7 unpacking to docker.io/alinerose/aromatica-app:latest
#7 unpacking to docker.io/alinerose/aromatica-app:latest 0.3s done
#7 DONE 1.7s
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Login Docker Hub)
[Pipeline] withCredentials
[Pipeline] // withCredentials
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Push Docker Image)
Stage "Push Docker Image" skipped due to earlier failure(s)
[Pipeline] getContext
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Deploy Container)
Stage "Deploy Container" skipped due to earlier failure(s)
[Pipeline] getContext
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline
ERROR: Could not find credentials entry with ID 'dockerhub'
Finished: FAILURE
