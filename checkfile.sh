#!/bin/bash
#to use: checkfile.sh (filename.xx)

filename=$1

        if [ -f "$filename" ]; then
                echo "File exists"
        else 
                echo "File does not exist"

                echo "Do you want to to created a file named:" $filename "?"

                read response
                 case "$response" in
        [Yy]*)
                cmd="touch $filename"
                eval $cmd
                echo "File created successfully!"
            ;;
        [Nn]*)
                echo "File is not created"
            ;;
        *) printf 'Invalid response "%s"\n' "$response"
    esac
        fi
