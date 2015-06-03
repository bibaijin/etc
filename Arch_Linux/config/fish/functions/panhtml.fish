function panhtml --description 'Convert from Markdown to Html by Pandoc'
    not whether_one_arg $argv; and return 3
    pandoc -t html5 -s \
    --template=/home/bibaijin/share/template/pandoc/pure/html5-my.html \
    --toc --toc-depth=3 \
    --mathjax \
    -o (basename $argv .md).html \
    $argv
end
