```
1. Git pull from github
2. sudo docker build -t office/npm-cache-server .
3. create dir cache_npm
4. sudo docker run -p 7070:8080 --name npm-cache-server -v /your/npm_cache_folder:/cache_npm -d <container_image>
Sample Command :
sudo docker run -p 7070:8080 --name npm-cache-server -v /home/sysadmin/cache_npm:/cache_npm -d office/npm-cache-server


usage : 

npm --proxy http://10.11.9.81:7070 --https-proxy http://10.11.9.81:7070 --strict-ssl false install
```
