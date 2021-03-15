#!/bin/sh

n=136
c=1

#
#while true;do
#JPG=$(cat i|sed -n 2p)
#echo "'$JPG'"
#dconf write /org/mate/desktop/background/picture-filename "'$JPG'"
#c=$(($c+1))
#if [ $c -eq $n ];then
#	c=1
#fi
#sleep 0.1
#done

#ffmpeg -i test.mp4 -vf fps=1/60 thumb%04d.png
ls /home/guest/live/* > i
loop(){
cat i|while read i;do dconf write /org/mate/desktop/background/picture-filename "'$i'";
echo "'$i'";sleep 0.08;done
}

while true;do
loop
done
