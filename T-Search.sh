blue="\e[34m"
cyan="\e[46m"
banner(){
echo -e "\e[46m"
toilet T-Search
echo -e "
_____________________________________
|________________________________|🔎|
echo -e "$blue                        ➡$cyan [\e[46m1\e[46m] Use Google (Suggested)"
echo -e "$blue                        ➡$cyan [\e[46m2\e[46m] Use DuckDuckGo (Safest Option)"
echo -e "$blue                        ➡$cyan [\e[46m3\e[46m] About me"
echo -e "$blue                        ➡$cyan [\e[46m4\e[46m] Update script "
echo -e "$blue                        ➡$cyan [\e[46m5\e[46m] Check out my VPN"
echo -e "$blue                        ➡$cyan [\e[46m6\e[46m] Report issues"
echo -e "$blue                        ➡$cyan [\e[46m7\e[46m] Exit"
echo -e "$blue               >＞＞＞＞＞$cyan [SELECT]$blue ＜＜＜＜＜<$blue"
echo " "
echo -ne "\e[34m#SELECT OPTION\e[34m: "
read optnz
if [ $optnz = "1" ];
then
w3m www.google.com
elif [ $optnz = "2" ];
then
w3n https://duckduckgo.com/
elif [ $optnz = "3" ];
then
am start -a android.intent.action.VIEW -d https://portosaurus.github.io/TommasoBona/ > /dev/null 2>&1
banner
elif [ $optnz = "4" ];
then
upd
elif [ $optnz = "5" ];
then
am start -a android.intent.action.VIEW -d https://whispervpn.company.site > /dev/null 2>&1
banner
elif [ $optnz = "6" ];
then
am start -a android.intent.action.VIEW -d https://github.com/ParzivalHack/T-Search/issues > /dev/null 2>&1
banner
elif [ $optnz = "7" ];
then
exit 1
else
echo "wrong"
exit
fi
}
upd(){
if [ -d "$HOME/T-Search" ];
then
cd $HOME
rm -rf T-Search
elif [ -d "$HOME/T-Search" ];
then
cd $HOME
rm -rf T-Search
else
echo
exit 1
fi
cd $HOME
sleep 1
echo -e "         \e[34mUPDATE IS GOING ON, PLEASE BE PATIENT...!\e[0m"
echo
printf "                     \e[34m["
# While process is running...
while git clone https://github.com/ParzivalHack/T-Search 2> /dev/null; do 
    printf  "\e[34m▓▓▓▓▓▓▓▓▓▓▓▓▓\e[0m"
    sleep 1
done
printf "\e[34m]\e[0m"
echo
echo
echo
printf "\e[34m           UPDATED SUCCESSFULLY TO THE LATEST VERSION!\e[0m"
sleep 2.0
clear
cd $HOME
cd T-Search
bash T-Search.sh
}
vid(){
FILE=$HOME/T-Search
if [ -f "$FILE" ]; then
pop
else
echo
fi
}
pop(){
clear
read p
if [ "$p" = "y" ];
then
am start -a android.intent.action.VIEW -d ERROR000 2>/dev/null
clear
baner1
menu
elif [ "$p" = "t" ];
then
clear
baner1
menu
elif [ "$p" = "z" ];
then
cd $HOMW/T-Search
rm noob.noob
banner
else
banner
exit
fi
}
banner
