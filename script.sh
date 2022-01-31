# /bin/bash
sudo mkdir -p /usr/share/nginx/html/nfs_data
while true
do 
	filename=$(echo $RANDOM)
	touch $filename
	cat /dev/urandom | tr -cd 'a-f0-9' | head -c 20000 >> /usr/share/nginx/html/nfs_data/$filename
done
