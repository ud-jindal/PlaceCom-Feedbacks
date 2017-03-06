while [ : ]
do
	echo "testimg\n"
	tmp=$(ls ./tmp/pids -l |wc -l)
	echo $tmp
	if [ $tmp -eq 1 ]
	then
		
		rails s -b 0.0.0.0 &

		echo "Restarting server"
	fi
	
	sleep 30s
done
