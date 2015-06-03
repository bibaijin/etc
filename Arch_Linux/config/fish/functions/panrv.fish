function panrv --description 'Convert from Markdown to Revealjs by Pandoc'
    not whether_one_arg $argv; and return 3
    pandoc -t revealjs \
    --bibliography=ref.bib \
    -s -i --slide-level=2 --mathjax --toc --toc-depth=2 \
    -o (basename $argv .md)-revealjs.html \
    $argv
end
