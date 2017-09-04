FIL=$1
INTERVAL=$2

if [ ! -f $FIL ];
then
touch $FIL
echo "filen $FIL ble opprettet"
exit 0
fi
	GAMMELFIL=$(stat $FIL -c%Y)
	while true; do
	   sleep $INTERVAL
	   if [ ! -f $FIL ];then
		echo "Filen $FIL ble slettet"
		exit 0
	   else
		NYFIL=$(stat $FIL -c%Y)
 		if [[ $GAMMELFIL != $NYFIL ]];
		then
			echo "Filen $FIL ble endret."
			exit 0
		fi
	   fi
done

