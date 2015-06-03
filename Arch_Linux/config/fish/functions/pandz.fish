function pandz --description 'Convert from Markdown to Dzslides by Pandoc'
    not whether_one_arg $argv; and return 3
    pandoc -t dzslides \
    --template=$HOME/share/template/pandoc/dzslides.html \
    -s -i --slide-level=2 --mathjax --bibliography=ref.bib \
    -o (basename $argv .md)-dzslides.html \
    $argv
end

