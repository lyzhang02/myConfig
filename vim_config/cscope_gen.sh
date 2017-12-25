#! /bin/bash
# create cscope.ou in current directory
# put this file in your PATH, e.g. /usr/local/bin
echo $PWD
find . -regextype egrep -regex ".*(\.cpp)|(\.c)|(\.h)|(\.hpp)|(\.cc)$" >| \
cscope_in
cscope -Rbkq -i cscope_in
