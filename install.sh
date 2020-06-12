#!/bin/sh

dialog --title "Latino&Greco - installazione" --textbox messaggio.txt 20 80
mkdir /home/$USER/lettereclassiche && cd /home/$USER/lettereclassiche
wget -r http://www.poesialatina.it/_ns/ProsaLat/p/mappa.html
wget -r http://www.poesialatina.it/_ns/Testi/p/mappa.html
wget -r http://www.poesialatina.it/_ns/Greek/testi/p/MappaProsaGr.html
mv /home/$USER/lettereclassiche/www.poesialatina.it/_ns/Greek/Testi/* /home/$USER/lettereclassiche
mv /home/$USER/lettereclassiche/www.poesialatina.it/_ns/ProsaLat/* /home/$USER/lettereclassiche
mv /home/$USER/lettereclassiche/www.poesialatina.it/_ns/Testi/* /home/$USER/lettereclassiche
rm -r /home/jeande/$USER/lettereclassiche/www.poesialatina.it
sudo chmod +x /home/$USER/programmi/lg.sh/lg.sh 
sudo cp /home/$USER/programmi/lg.sh/lg.sh /bin/lg
dialog --title "Latino&Greco - installazione" --textbox messaggio2.txt 20 80
