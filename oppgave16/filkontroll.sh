FIL=$1
INTERVAL=$2

if [ ! -f $FIL ];
then
exit 0
fi
	GAMMELFIL=$(stat $FIL -c%Y)
	while true; do
	   if [ ! -f $FIL ];then
		echo "fil slettet"
		exit 0
	   fi
		sleep $INTERVAL
		NYFIL=$(stat $FIL -c%Y)
 		if [[ $GAMMELFIL != $NYFIL ]];
		then
			echo endring
			GAMMELFIL=$(stat $FIL -c%Y)
		fi
done

