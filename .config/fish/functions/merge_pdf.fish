function merge_pdf
  gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$argv[2] $argv[1]
end
