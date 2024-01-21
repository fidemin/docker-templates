mkdir -p sentinel/conf_sentinel1
mkdir -p sentinel/conf_sentinel2
mkdir -p sentinel/conf_sentinel3

cp sentinel/sentinel_original.conf sentinel/conf_sentinel1/sentinel.conf
cp sentinel/sentinel_original.conf sentinel/conf_sentinel2/sentinel.conf
cp sentinel/sentinel_original.conf sentinel/conf_sentinel3/sentinel.conf

# to make docker container volume to write file to local disk
# This is simple way for docker in Macos.
chmod -R 0777 sentinel/conf_sentinel1
chmod -R 0777 sentinel/conf_sentinel2
chmod -R 0777 sentinel/conf_sentinel3

docker-compose -f redis-with-sentinel.yml up 

