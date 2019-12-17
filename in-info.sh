cd $PREFIX/bin
if [ -e termux-api ];then
echo
else
printf "\n\033[92m [+] \033[93m Requirements installing....\n"
sleep 0.50
pkg install termux-api
clear
echo
fi
cd /sdcard
if [ -e Instagram-Info ];then
echo
else
termux-setup-storage
mkdir /sdcard/Instagram-Info
fi
cd ~/Instagram-Info
s="toilet -f term -F gay"
figlet Instagram | $s
echo
echo -en "\033[32m Enter instagram username :- \033[77m"
read a
if [ $a ];then
wget https://www.instagram.com/$a > /dev/null 2>&1
mv $a $a.html
cp -f $a.html /sdcard/Instagram-Info
printf "\n\033[92m [√]\033[96m Saved $a.html in /sdcard/Instagram-Info\n"
printf "\n\033[35m Press enter to open in browser\n"
read
termux-open https://www.instagram.com/$a
fi