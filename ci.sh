#!/bin/bash
#colors
<<importante
SCRIPT CREADO PARA GUARDAR DATOS PERSONALES AJENOS DE UNA PERSONA Y USARLO PARA SUPLANTACION DE IDENTIDAD VIRTUAL
EL CREADOR DE ESTE SCRIPT (KevinVarSa) NO SE HACE RESPONSABLE DEL USO ILEGAL DE ESTA HERRAMIENTA
importante
#PALETA DE COLORES
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"
#VARIABLE DEL ARCHIVO A CREAR
archivo="lista.txt"
#BANNER
clear
cat <<- EOF


        ░▓                     ▒▓
     ▒▓▓░                        ▒▓▓░
   ▓▓▓▓                          ░▓▓▓▓
 ░▓▓▓▓▓▓░            ▓▓▓        ▒▓▓▓▓▓▓
 ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
    ▓▓▒░▓▒▒░▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▓░▒▓▒
           ▓▓  ░▓▓▓▓▓▓▓▓▓░ ▒▓▓
          ▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒
           ░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓░
              ▒▓▒▒▓▓▓▒▒▓░
              ░▓░░▒▓▒░░▓
                ▒▓░ ░▓▒
 ____  ____  ____  ____  _  ________  _
/  __\/  __\/  _ \/  _ \/ \/  __/\  \//
|  \/||  \/|| / \|| | \|| || |  _ \  / 
|  __/|    /| \_/|| |_/|| || |_// / /  
\_/   \_/\_\\____/\____/\_/\____\/_/   
                      (Creador:KevinVarSa)

EOF

#MENU DE OPCIONES Y CONFIRMACION DE QUE SI EL ARCHIVO EXISTE
if [ -e "$archivo" ];then
echo "Escoja una opcion"
echo "[1] Buscar Usuario"
echo "[2] Registrar Usuario"
echo "[3] MOSTRAR TODA LA LISTA DE USUARIOS"
echo "[4] Salir"
read -p "opcion: "
#TOMA DE DECISIONES CON IFS
if [ ${REPLY} -eq 1 ];then
   read -p "Ingrese el primer nombre del usuario como se registro: " user
#PARA BUSCAR TODO DEL USUARIO INGRESADO Y LA CARGA DE BARRA
    echo -e ${WHITE}
    for ((i = 1; i <= 100; i++)); do
    printf "%d%%\rBuscando usuario..." "$i"
    sleep 0.04
done
   printf "\n"
   echo -e ${GREEN}
   grep -E "$user .* [0-9]+ [0-9]{2}/[0-9]{2}/[0-9]{2}" lista.txt
elif [ ${REPLY} -eq 2 ];then
    read -p "Ingrese el NOMBRE COMPLETO: " user1
    read -p "Ingrese el C.I: " user2
    read -p "Ingrese la fecha y año de nacimiento: " user3
#REDIRECCIONA TODO LO INGRESADO AL ARCHIVO "LISTA.TXT"
    echo ${user1} ${user2} ${user3} >> lista.txt
    echo ""
#Barra simuladora de carga del 1 al 100%
    for ((i = 1; i <= 100; i++)); do
    printf "%d%%\rregistrando..." "$i"
    sleep 0.04
done

echo

    echo -e ${RED} "$user1 $user2 $user3 creado con exito!"
elif [ ${REPLY} -eq 3 ];then
    echo -e ${RED}
#MUESTRA TODO DE TODOS LOS USUARIOS
    cat lista.txt
#SALE DEL PROGRAMA
else

    exit 1
fi
#EN CASO DE QUE EL ARCHIVO NO EXISTA SE CREA
else 
    echo "Archivo creado"
    echo "PRESIONE CTRL + C para salir"
    cat>lista.txt
fi


