#!/bin/bash
echo Cúal es la rama que quieres crear y hacer modificaciones?
read rama
echo $rama
echo Estas son las ramas que tienes y la que tiene el * es en la que estas actualmente
git branch
echo Creamos la rama $rama y nos movemos a ella
git checkout -b $rama
echo Añadimos los cambios que hayamos hecho en nuestro proyecto
git add .
echo Hacemos commit y damos información de lo que hemos modificado
git commit
git push origin $rama
echo Nos movemos a la rama de trabajo, cúal es tu rama de trabajo?
read ramaTrabajo
git checkout $ramaTrabajo
echo Hacemos merge de $rama a develop
git merge --no-ff $rama
git push origin $ramaTrabajo
echo Finalmente borramos $rama y luego también hay que hacerlo de forma física en gitHub
git branch -d $rama
