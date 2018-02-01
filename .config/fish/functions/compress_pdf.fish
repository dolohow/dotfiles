function compress_pdf --argument-names 'input_file' --argument-names 'output_file'
  gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$output_file $input_file
end

