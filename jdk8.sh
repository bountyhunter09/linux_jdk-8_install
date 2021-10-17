#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)
red="\e[91m"
green="\e[92m"
blue="\e[94m"
none="\e[93m"
try="\e[37m"


echo -e "${try}${bold}Make sure you're root before run this script ${try} ${green}"



read -p "If you Download Jdk-8 ??? please type yes or no and press enter Thank You : " filedown

  if [ "$filedown" = "no" ] ;

then 

   echo -e "${try}${bold}ok thank you ${try}${bold}"  
   
sleep 1
echo -e "${red}${bold}Make sure you're root before run this script ${bold} ${green}"
sleep 2 
sudo rm -rf /usr/lib/jvm/jdk-8

sudo tar -xf jdk-8.tar.gz

sudo mv jdk-8 /usr/lib/jvm

sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-8/bin/java 1

sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-8/bin/javac 1

sudo update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/jdk-8/bin/jar 1

sleep 1
echo -e "${try}${bold}Please Select jdk-8 mode number and press enter${try}${bold}"
sleep 1
echo -e "${try}In bellow${try}"
sudo update-alternatives --config java
sleep 1
echo -e "${none}Java path in --> ${none}"
echo $JAVA_HOME
echo -e "${try}Now Try to run Burpsuite Loader${try}"
echo -e "${red}                                               Coded By ${bold}R3D_D3ViL(Cyber-71)${red}"
   
else
   
clear
echo -e "${red}${bold}Make sure you're root before run this script ${bold} ${red}"
sleep 2

echo -e "${green}${bold}Please Wait.......... Java Jdk 8 downloding --------- ${bold} $green}"

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1YjhjhyIQ-Ib49xkPyXOd9OJ872TIzkSQ' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1YjhjhyIQ-Ib49xkPyXOd9OJ872TIzkSQ" -O jdk-8.tar.gz && rm -rf /tmp/cookies.txt


clear

echo -e "${green}${bold}Jdk download is completed !!!!!  ${bold} ${green}"

sleep 1

sudo rm -rf /usr/lib/jvm/jdk-8

sudo tar -xf jdk-8.tar.gz

sudo mv jdk-8 /usr/lib/jvm

sudo rm jdk-8.tar.gz

sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-8/bin/java 1

sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-8/bin/javac 1

sudo update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/jdk-8/bin/jar 1

sleep 1
echo -e "${red}${bold}Please Select jdk-8 mode number and press enter${red}${bold}"
sleep 1
echo -e "${try}In bellow${try}"
sudo update-alternatives --config java
sleep 1
echo -e "${none}Java path in --> ${none}"
echo $JAVA_HOME
echo -e "${try}Now Try to run Burpsuite Loader${try}"
echo -e "${red}                                               Coded By ${bold}R3D_D3ViL${red}"

fi
