cd /home/ybonnel/ybo-tv/xmltv

echo "`date +"%Y%m%d %T.%N"` : debut grab"

mc2xml -c fr -g 10000 

echo "`date +"%Y%m%d %T.%N"` : fin grab"


if [ -f xmltv.xml ]
then
	echo "`date +"%Y%m%d %T.%N"` : Lancement de la mise a jour mongo"

	java -jar ybo-tv-helper-jar-with-dependencies.jar xmltv.xml

	echo "`date +"%Y%m%d %T.%N"` : Fin de la mise a jour mongo"
fi
