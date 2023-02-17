#!/bin/bash

clear
echo "Hello! This is the fix script to run waydroid! on Xiaomi Garden Devices"
sleep 10
clear

 echo "OK! Now we will start the installation...  "
 echo "Now, first of all, we will update the package database..."
 echo "Now you will be prompted to enter a password for your account, please enter it and we will start right away! "
   echo " "
   echo " "
   sudo apt update
   sudo apt remove waydroid -y
   sudo apt install waydroid -y
   sudo rm /usr/lib/waydroid/tools/helpers/arch.py 
   wget https://raw.githubusercontent.com/ManWithTheHat/waydroid_run_fix_xiaomi_garden/main/arch.py
   sudo mv arch.py /usr/lib/waydroid/tools/helpers/
   wget https://raw.githubusercontent.com/ManWithTheHat/waydroid_run_fix_xiaomi_garden/main/config
   sudo mv config /var/lib/waydroid/lxc/waydroid/
   clear
   echo "Now you need to choose which version of Android you want to choose"
   echo "1) Version with Google Apps"
   echo "2) Vanilla version of Android"
   echo "3) FOSS version (Yes you are Stolman Gigachad)"
   read -p "Choice number: " AndroidVer
   case "$AndroidVer" in
       1) clear
	      echo "Okay, let's start setting up the system!"
		  echo " "
		  sudo waydroid init -s GAPPS
		  clear
		  echo "ALL! We're done! Let's run it now.... Press Enter to close the script and run Waydroid!"
		  echo " "
		  echo "ATTENTION! Waydroid will not start immediately! Be patient! It may take 2 to 10 minutes to start!"
		  echo " "
		  echo "The script was made by @man_with_the_hat"
		  echo "Thanks for the help @Deathmist1337 and @TheVancedGamer "
		  echo " "
		  read keypress
		  clear
		  waydroid show-full-ui 
		  ;;
	    2) clear
	      echo "Okay, let's start setting up the system!"
		  echo " "
		  sudo waydroid init
		  clear
		  echo "ALL! We're done! Let's run it now.... Press Enter to close the script and run Waydroid!"
		  echo " "
		  echo "ATTENTION! Waydroid will not start immediately! Be patient! It may take 2 to 10 minutes to start!"
		  echo " "
		  echo "The script was made by @man_with_the_hat"
		  echo "Thanks for the help @Deathmist1337 and @TheVancedGamer "
		  echo " "
		  read keypress
		  clear
		  waydroid show-full-ui 
		  ;;
		 3)clear
	      echo "Okay, let's start setting up the system!"
		  echo " "
		  sudo waydroid init -s FOSS
		  clear
		  echo "ALL! We're done! Let's run it now.... Press Enter to close the script and run Waydroid!"
		  echo " "
		  echo "ATTENTION! Waydroid will not start immediately! Be patient! It may take 2 to 10 minutes to start!"
		  echo " "
		  echo "The script was made by @man_with_the_hat"
		  echo "Thanks for the help @Deathmist1337 and @TheVancedGamer "
		  echo " "
		  read keypress
		  clear
		  waydroid show-full-ui 
		  ;;
		  esac