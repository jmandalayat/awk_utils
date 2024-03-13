BEGIN {
    RS=" "
    FS="\""
    pat="https://www.instagram.com/p/"
}

$0~pat { print $2 }
