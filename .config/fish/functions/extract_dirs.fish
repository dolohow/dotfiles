function extract_dirs
  for archive in **/*rar
    rar x $archive
  end
end
