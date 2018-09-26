docker run -p 8082:8000 -d moul/icecast
docker run -p 8084:8084 -d nicktgr15/liquidsoap-docker-from-source /usr/local/bin/liquidsoap 'output.icecast(%vorbis, host = "83.212.112.23", port = 8082, password = "hackme", mount = "liq.ogg", mksafe(input.harbor("mount",port=8084)))'
docker run -p 8082:8000 -d nicktgr15/webcaster-docker python -m SimpleHTTPServer
