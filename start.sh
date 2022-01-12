mkdir -p Logs db && chmod -R 0777 Logs db
docker rm -f devserver || true
docker run -d \
  --name=devserver \
  --restart=always \
  -v $(pwd)/Logs:/app/Logs \
  -v $(pwd)/db:/app/db \
  -p 0.0.0.0:80:80 \
  -p 0.0.0.0:15152:15152 \
  axedsteel/serveremu-alpha:latest