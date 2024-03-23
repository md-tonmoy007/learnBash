#! /bin/bash

cat << retrieve
-eq for equal | -ne for not equal |
-gt for greater than ( can use these also '<' '>')
-lt for less than

retrieve


count=10
if [ $count -eq 10 ] # -eq for equal | -ne for not equal
then 
    echo "hello world"
elif [ $count < 9 ]
then
    echo "not universe"
else
    echo "bye world"
fi