#!/bin/bash
# Exemplo Final de Script Shell
#
 
etBOOK() {
  # 1- ECHO BUILD 
  # --------------------------------------------------------------------------------------------------------------------

  echo "Options:"
  echo
  echo "1. Trasformar nomes de arquivos"
  echo "2. Adicionar um usuário no sistema"
  echo "3. Deletar um usuário no sistema"
  echo "4. Fazer backup dos arquivos do /etc"
  echo "5. Sair do exemplo"
  echo
  echo -n "Qual a opção desejada? "
  echo # ouput: new line
  echo "& Book!" # ouput: new line: Sample in browser Javascript : console.log("& Book!")
  echo "-" # ouput: new line
  echo # ouput: new line
  echo OPTION 1 - INSTALL WITH Shell Script # ouput: new line
  # read OPTION1
  echo OPTION 2 - INSTALL WITH Nodejs # ouput: new line
  # read OPTION 2
  echo OPTION 3 - INSTALL WITH Python # ouput: new line
  # read OPTION 3
  echo OPTION 4 - SHOW VERSION # ouput: new line
  # read OPTION 4
  echo OPTION 5 - SHOW LICENSE # ouput: new line
  # read OPTION 5
  echo OPTION 6 - SHOW REFERENCE # ouput: new line
  # read OPTION 6
  echo OPTION 7 - SHOW PRINT Figlet  # ouput: new line
  # read OPTION 7
  echo OPTION 8 - SHOW PRINT Toilet  # ouput: new line
  # read OPTION 8
  echo OPTION 9 - SHOW PRINT DCOP # ouput: new line
  # read OPTION 9
  echo # ouput: new line
  echo # ouput: new line
  echo # ouput: new line
  echo # ouput: new line
  echo "All Arguments are: -r (running) , -h (help) , -v (version) , reference (readme)" # ouput: new line
  echo # ouput: new line
  echo # ouput: new line
  echo # ouput: new line
  echo # ouput: new line
  echo "& username: $(whoami)" # ouput: new line
  echo "-" # ouput: new line
  echo # ouput: new line
  echo "& here the directory, path: $(pwd)"  # ouput: new line & path /../.../..
  echo "-" # ouput: new line
  echo # ouput: new line
  echo # ouput: new line
  echo # ouput: new line
  echo "& et" # ouput: new line
  read option
  case $opcao in
    1) OPTION1 ;;
    2) OPTION2 ;;
    3) VERSION ;;
    4) LICENSE ;; 
    5) REFERENCE ;;
    6) INSTALL ;;
    7) OPTION6 ;;
    8) exit ;;
    *) "Opção desconhecida." ; echo ; etBOOK ;;
  esac
}
 
OPTION1() {
  echo -n "Para Maiúsculo ou minúsculo? [M/m] "
  read var
  if [ $var = "M" ]; then
    echo -n "Que diretório? "
    read dir
 
    for x in `/bin/ls` $dir; do
      y=`echo $x | tr '[:lower:]' '[:upper:]'`
      if [ ! -e $y ]; then
        mv $x $y
      fi
    done
 
  elif [ $var = "m" ]; then
    echo -n "Que diretório? "
    read dir
 
    for x in `/bin/ls` $dir; do
      y=`echo $x | tr '[:upper:]' '[:lower:]'`
      if [ ! -e $y ]; then
        mv $x $y
      fi
    done
 
  fi
}
 
OPTION2() {
  // python
  etBOOK
}
 
VERSION() {
   echo "OS                      :  Gnulinux" # ouput: new line
   echo "License                 :  Copyright, ET-STD, ET-BOOK ... " # ouput: new line
   echo "Reference               :  https://github.com/ET-Lang/book " # ouput: new line
   echo "Version, Year, Date     :  2019 , Wednesday, June 12th 2019 @ 01:47:23 PM https://github.com/ET-Lang/book" # ouput: new line
   etBOOK
}
 
LICENSE() {
   echo Author @pglapds # ouput: new line Author @pglapds
   echo @url https://github.com/ET-Lang/book/ # ouput: new line @url https://github.com/ET-Lang/book/
   echo # ouput: new line
   echo CONTRIBUTOR @pglapds # ouput: new line  CONTRIBUTOR @pglapds
   echo @url https://github.com/ET-Lang/book/  # ouput: new line @url https://github.com/ET-Lang/book/
   echo # ouput: new line
   echo CONTRIBUTION # ouput: new line CONTRIBUTION
   echo @url https://github.com/ET-Lang/book/  # ouput: new line @url https://github.com/ET-Lang/book/
   echo # ouput: new line
   echo SPECIFIC CONTRIBUTION : book/*  # ouput: new line SPECIFIC CONTRIBUTION : book/* 
   echo @url https://github.com/ET-Lang/book/  # ouput: new line @url https://github.com/ET-Lang/book/ 
   etBOOK
}

REFERENCE() {
   echo @reference: https://superuser.com/questions/1260038/font-size-in-shell-script  # ouput: new line
   echo @reference: https://www.cyberciti.biz/faq/create-large-colorful-text-banner-on-screen # ouput: new line
   echo @reference: https://stackoverflow.com/questions/25036555/how-to-print-in-shell-script # ouput: new line
   echo @reference: https://stackoverflow.com/questions/996158/modifying-font-size-using-shell-script # ouput: new line
   echo @reference: https://www.unix.com/shell-programming-and-scripting/96575-change-font-size-bash.html # ouput: new line
   echo @reference: https://it.toolbox.com/question/how-to-change-font-size-of-text-in-a-file-using-a-shell-script-071608  # ouput: new line                                                                   
   echo @reference: https://unix.stackexchange.com/questions/398766/how-do-i-increase-the-font-size-of-the-centos-7-console  # ouput: new line        
   echo @reference: https://unix.stackexchange.com/questions/77049/how-do-i-change-the-screen-font-size-when-using-a-virtual-console # ouput: new line
   echo @reference: https://www.linuxquestions.org/questions/linux-newbie-8/can-i-increase-font-size-through-shell-scripts-4175502369 # ouput: new line
  etBOOK
}


INSTALL() {

   # wget log file
   LOGFILE=book.log
   
   # wget download url
   URL=https://codeload.github.com/ET-Lang/book/zip/master
   
   # start wget and unzip, rename, delete zip and cd zip 
   wget $URL -O book.zip; unzip book.zip; rm book.zip -o $LOGFILE
   
   # start  pdflatex and generate PDF
   pdflatex main.tex
   
   alias generatePDF='echo $var5'
   
  etBOOK
}

OPTION4() {
  // figlet
  // toilet
  etBOOK
}

OPTION5() {
  // dcop  
  etBOOK
}


etBOOK
