function cut_pdf
  gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=$argv[1] -dLastPage=$argv[2] -sOutputFile=$argv[3] $argv[4]
end
