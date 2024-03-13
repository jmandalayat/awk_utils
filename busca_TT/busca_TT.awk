# Es necesario pasar como argumento la variable "user" como argumento:
#    -v user=[USUARIO]

BEGIN {
    RS=" "
    FS="\""
    pat="https://www.tiktok.com/@" user "/video/"
}

$0~pat { print $2 }
