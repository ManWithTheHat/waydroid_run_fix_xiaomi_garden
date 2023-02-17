#!/bin/bash

clear
echo "Hello / Привет!"
echo " "
echo "Hello! This is the fix script to run on waydroid! First, let's choose a language, this will allow us to determine how to address you! "
echo "Привет! Это скрипт фикса для запуска на waydroid! Для начала давайте выберем язык, это позволит нам определить как к вам обращаться!"
echo " "
echo " "
echo "1) Русский"
echo "2) English"
echo "Введите цифру для вашего варианта.. Например 1 для выбора русского языка \ Please enter a number for your choice. For example 2 for English: "
read language

case "$language" in
   1)clear
   echo "Окей! Сейчас мы начнем установку... Сейчас для начала обновим базу пакетов... Сейчас вам предложит ввести пароль от вашей учетной записи, пожалуйста введите его и мы сразу начнем!"
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
   echo "Теперь необходимо выбрать какую версию Android вы хотите выбрать"
   echo "GAPPS) Версия с Google Apps"
   echo "2) Ванильная версия Android"
   echo "3) FOSS версия (Только Open Source, только хардкор)"
   echo " "
   read AndroidVer
   case "$AndroidVer" in
      1)
	      clear
	      echo "Окей начинаем настройку ситемы!"
		  echo " "
		  sudo waydroid init -s GAPPS
		  clear
		  echo "ВСЕ! Мы закончили! Давайте теперь запустим его.... Нажмите Enter что бы закрыть скрипт и запустить Waydroid!"
		  echo " "
		  echo "ВНИМАНИЕ! Waydroid запустится не моментально! Проявите терпение! Для запуска может потребоваться от 2 до 10 минут!"
		  echo " "
		  echo "Скрипт был сделан @man_with_the_hat"
		  echo "Спасибо за помощь @Deathmist1337 и @TheVancedGamer "
		  echo " "
		  read keypress
		  clear
		  waydroid show-full-ui 
		  ;;
	    2)clear
	      echo "Окей начинаем настройку ситемы!"
		  echo " "
		  sudo waydroid init
		  clear
		  echo "ВСЕ! Мы закончили! Давайте теперь запустим его.... Нажмите Enter что бы закрыть скрипт и запустить Waydroid!"
		  echo " "
		  echo "ВНИМАНИЕ! Waydroid запустится не моментально! Проявите терпение! Для запуска может потребоваться от 2 до 10 минут!"
		  echo " "
		  echo "Скрипт был сделан @man_with_the_hat"
		  echo "Спасибо за помощь @Deathmist1337 и @TheVancedGamer "
		  echo " "
		  read keypress
		  clear
		  waydroid show-full-ui 
		  ;;
		 3)clear
	      echo "Окей начинаем настройку ситемы!"
		  echo " "
		  sudo waydroid init -s FOSS
		  clear
		  echo "ВСЕ! Мы закончили! Давайте теперь запустим его.... Нажмите Enter что бы закрыть скрипт и запустить Waydroid!"
		  echo " "
		  echo "ВНИМАНИЕ! Waydroid запустится не моментально! Проявите терпение! Для запуска может потребоваться от 2 до 10 минут!"
		  echo " "
		  echo "Скрипт был сделан @man_with_the_hat"
		  echo "Спасибо за помощь @Deathmist1337 и @TheVancedGamer "
		  echo " "
		  read keypress
		  clear
		  waydroid show-full-ui 
		  ;;
		  esac
   2)clear
   echo "OK! Now we will start the installation... Now, first of all, we will update the package database... Now you will be prompted to enter a password for your account, please enter it and we will start right away!"
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
   echo ": "
   read AndroidVer
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
   ;;
   esac