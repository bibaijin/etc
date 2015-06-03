function encrypt --description 'Encrypt file'
    not whether_one_arg $argv; and return 3
    openssl aes-256-cbc -a -salt \
    -in $argv -out {$argv}.enc; and rm -f $argv
end
