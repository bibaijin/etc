function panpdf --description 'Convert from Markdown to Pdf by Pandoc'
    not whether_one_arg $argv; and return 3
    pandoc --latex-engine=xelatex \
    --template=$HOME/share/template/pandoc/pdf.tex \
    -o (basename $argv .md).pdf \
    $argv
end
