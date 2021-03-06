#!bin/bash

# AUTHOR_NAME Abdul Rehman
# AUTHOR_EMAIL mehars.6925@gmail.com
# AUTHOR_PROFILE https://github.com/AbdulRehmanMehar
# PUBLIC_URI https://github.com/AbdulRehmanMehar/mini-IDE

mainMenu() {
    input=-1

    while 
        [ $input -ne 4 ]
    do 
        echo "Welcome to Program Management!"
        echo ""

        echo "1. Compile and Run C Program"
        echo "2. Create File"
        echo "3. Make changes to existing program (replace vars and strings)"
        echo "4. Exit the program"

        echo ""

        echo "Select an option: "

        read input

        echo ""

        if [ $input -eq 1 ]
        then
            
            echo "Enter Path of the File: "
            read filePath
            echo ""
            eval bash compiler.sh ${filePath}

            pid=$!
            wait $pid

            echo ""

        elif [ $input -eq 2 ]
        then

            echo "Enter name of file"

            read filename

            eval nano $filename

            pid=$!
            wait $pid
                        

        elif [ $input -eq 3 ] 
        then
            
            eval bash redirect.sh
            pid=$!
            wait $pid

            echo $pid
        fi
    
        echo ""
        echo ""
    done

}

mainMenu