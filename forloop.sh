for files in *.log
do
	folderName=`echo $files | awk -F. '{print $1}'`;
	echo $files;
	echo $folderName;
	dmy=`date +%d-%m-%y`
	printf "\n";
	if [ -d $folderName ]
	then
		rm -R $folderName;
	fi
	mkdir $folderName;
	nFile=${files%.*}
#	echo $nFile
	cp $files $folderName/$nFile$dmy.log;
done


