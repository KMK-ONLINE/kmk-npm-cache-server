1. Pull it from github
2. sudo docker build -t office/npm-cache-server .
3. create dir cache_npm
4. Run your docker with these
```
sudo docker run -p 7070:8080 --name npm-cache-server -v /your/npm_cache_folder:/cache_npm -d <container_image>
```
Sample Command :
```
sudo docker run -p 7070:8080 --name npm-cache-server -v /home/sysadmin/cache_npm:/cache_npm -d office/npm-cache-server
```

usage : 
```
npm --proxy http://10.11.9.81:7070 --https-proxy http://10.11.9.81:7070 --strict-ssl false install
```

nt : i am currently in indonesia and using nearest repo in here, you might need to modified Dockerfile to make sure you also pick your nearest ubuntu repo
