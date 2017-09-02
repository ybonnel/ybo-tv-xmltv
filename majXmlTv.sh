cd /home/ybonnel/ybo-tv/xmltv

echo "`date +"%Y%m%d %T.%N"` : debut grab"

	java -jar ybo-tv-helper-jar-with-dependencies.jar 

	echo "`date +"%Y%m%d %T.%N"` : Fin de la mise a jour mongo"
fi
