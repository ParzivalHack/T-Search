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
