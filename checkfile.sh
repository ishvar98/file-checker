#!/bin/bash
#to use: checkfile.sh (filename.xx)


        year=`date +%Y`
        month=`date +%m`
        day=`date +%d`

        hour=`date +%H`
        minute=`date +%M`
        second=`date +%S`




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
                echo "File '$filename' created successfully!"
                echo "Date of file created : $day-$month-$year"
                echo "Time of file created : $hour:$minute:$second"
            ;;
        [Nn]*)
                echo "File is not created"
            ;;
        *) echo 'Invalid response "%s"\n' "$response"
    esac
        fi
