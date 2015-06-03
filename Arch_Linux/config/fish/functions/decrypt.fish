function decrypt --description 'Decpypt file'
    not whether_one_arg $argv; and return 3
    openssl aes-256-cbc -d -a -salt \
    -in $argv -out (basename $argv .enc); and rm -f $argv
end
