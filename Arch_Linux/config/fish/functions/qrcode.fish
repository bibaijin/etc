function qrcode --description 'Generate QR code'
    qrencode -s 12 -m 2 -o ~/tmp/qrcode.png $argv 
end
