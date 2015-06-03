function pandocx --description 'Convert from Markdown to Docx by Pandoc'
    not whether_one_arg $argv; and return 3
    pandoc -t docx \
    --bibliography=ref.bib \
    -o (basename $argv .md).docx \
    $argv
end

