function panbeamer --description 'Convert from Markdown to Beamer by Pandoc'
    not whether_one_arg $argv; and return 3
    pandoc -t beamer --latex-engine=xelatex \
    --template=$HOME/share/template/pandoc/beamer.tex \
    -o (basename $argv .md)-beamer.pdf \
    $argv
end
