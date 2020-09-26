#!bin/bash

# AUTHOR_NAME Abdul Rehman
# AUTHOR_EMAIL mehars.6925@gmail.com
# AUTHOR_PROFILE https://github.com/AbdulRehmanMehar
# PUBLIC_URI https://github.com/AbdulRehmanMehar/mini-IDE

if [ -f $1 ]
then
    output="$(echo $1 | cut -d'.' -f1)"
    STRLENGTH=$(echo -n $output | wc -m)
    gcc ${1} -o "$output"
    pid=$!
    wait $pid
    if [[ $output == /* ]]
    then
        outputDir=$(dirname $1)
        output=$(basename -- "$1")
        output="$(echo $output | cut -d'.' -f1)"
        cd $outputDir
        sudo ./$output
        pid=$!
        wait $pid
        eval sudo rm $output
    else
        ./$output
        pid=$!
        wait $pid
        eval rm $output
    fi
    
else
	echo "Please provide a valid path!"
fi
