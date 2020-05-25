#!/bin/sh
 
echo "Autore? (h per l'indice)"
read auct
if [ $auct == 'h' ]
then
	ls /home/$USER/lettereclassiche
	echo "Autore? (h per l'indice)"
	read auct
	cd /home/$USER/lettereclassiche/$auct ; ls /home/$USER/lettereclassiche/$auct 
	echo Opera?
	read op
	lynx --dump $op.html >> $op.txt
	echo "desideri leggerla in pdf o in txt?"
	read form
	if [ $form == 'txt' ]
	then
		cat $op.txt | less
	else
		soffice --convert-to pdf $op.txt
		zathura $op.pdf
	fi

else

	cd /home/$USER/lettereclassiche/$auct ; ls /home/$USER/lettereclassiche/$auct 
	echo Opera?
	read op
	lynx --dump $op.html >> $op.txt
	echo "desideri leggerla in pdf o in txt?"
	read form
	if [$form == 'txt']
	then
		cat $op.txt | less
	else
		soffice --convert-to pdf $op.txt
		zathura $op.pdf
	fi
fi
