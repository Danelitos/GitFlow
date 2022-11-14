#!/bin/bash
RESET="\e[0m"
RED="\e[31m"
BLUE="\e[34m"
echo $RED Cúal es la rama que quieres crear y hacer modificaciones? $RESET
read rama
echo "\n"$BLUE Estas son las ramas que tienes y la que tiene el asterisco es en la que estas actualmente $RESET 
git branch
echo "\n"$BLUE Creamos la rama $rama y nos movemos a ella $RESET
git checkout -b $rama
echo "\n"$BLUE Añadimos los cambios que hayamos hecho en nuestro proyecto $RESET "\n"
git add .
echo $BLUE Hacemos commit y damos información de lo que hemos modificado $RESET 
git commit
git push origin $rama
echo "\n"$RED Nos movemos a la rama de trabajo, cúal es tu rama de trabajo? $RESET
read ramaTrabajo
git checkout $ramaTrabajo
echo "\n"$BLUE Hacemos merge de $rama a develop $RESET
git merge --no-ff $rama
git push origin $ramaTrabajo
echo "\n"$BLUE Finalmente borramos $rama y luego también hay que hacerlo de forma física en gitHub $RESET
git branch -d $rama
