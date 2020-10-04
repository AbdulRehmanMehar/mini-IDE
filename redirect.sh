#!bin/bash

# AUTHOR_NAME Abdul Rehman
# AUTHOR_EMAIL mehars.6925@gmail.com
# AUTHOR_PROFILE https://github.com/AbdulRehmanMehar
# PUBLIC_URI https://github.com/AbdulRehmanMehar/mini-IDE


makeChangesToExistingProgram() {
    echo "Enter (absolute) Path of File: "
    read filePath
    echo " "
    echo "Enter (absolute) Path to save new File: "
    read newFile
    echo " "

    echo "Enter content to change (a word or line): "
    read toChange

    echo " "

    echo "Enter the new Content: "

    read newContent

    echo ""

    eval tr ${toChange} ${newContent} < ${filePath} > ${newFile}

    pid=$!
    wait $pid

    echo "Done!"

}

makeChangesToExistingProgram

