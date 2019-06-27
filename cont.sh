manoj=$1

echo "creating patient $manoj containers"
sleep 2;

for i in `seq $manoj`
do
	echo "creating www.patient$i containers"
	sudo docker run -it --name www.patient$i mano8888/my-app /bin/bash
	sleep 1;
	echo "www.patient$i containers has been created"
done
