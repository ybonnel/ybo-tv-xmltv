cd /home/ybonnel/ybo-tv/xmltv

echo "`date +"%Y%m%d %T.%N"` : debut grab"

./tv_grab_fr_telerama > xmltv.xml.new

echo "`date +"%Y%m%d %T.%N"` : fin grab"


if [ -f xmltv.xml.new ]
then
	mv xmltv.xml xmltv.xml.old
	mv xmltv.xml.new xmltv.xml
	echo "`date +"%Y%m%d %T.%N"` : Fin mise a jour"

	echo "`date +"%Y%m%d %T.%N"` : Lancement de la mise a jour couchbase"

	java -jar ybo-tv-helper-jar-with-dependencies.jar xmltv.xml

	echo "`date +"%Y%m%d %T.%N"` : Fin de la mise a jour couchbase"
fi
