docker run -itd --name nginx \
  --link ev-app1.5:ev-app1.5 \
  -p 80:80 custom-nginx

