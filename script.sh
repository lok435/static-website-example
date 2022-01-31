# /bin/bash
while true
do 
	filename=$(echo $RANDOM)
	touch $filename
	cat /dev/urandom | tr -cd 'a-f0-9' | head -c 20000 >> /data/$filename
done
