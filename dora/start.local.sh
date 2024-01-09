
docker run \
  -d \
  --restart unless-stopped \
  --name=dora-explorer \
  -v $(pwd):/config \
  -v $(pwd)/el-cl-genesis-data:/el-cl-genesis-data \
  -p 9777:8080 \
  -it pk910/dora-the-explorer:latest \
  -config=/config/local.yaml


