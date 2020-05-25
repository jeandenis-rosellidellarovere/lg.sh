#!/bin/sh

dialog --title "Latino&Greco - installazione" --textbox messaggio.txt 20 80
mkdir /home/$USER/lettereclassiche && cd /home/$USER/lettereclassiche
wget #ilmiolinkagoogledrive
dialog --title "Latino&Greco - installazione" --textbox messaggio2.txt 20 80
sudo chmod +x lg.sh 
sudo cp lg.sh /bin/lg
