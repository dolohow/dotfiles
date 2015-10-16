function report
    mkdir $argv
    cp ~/static/Drive/studia/Miscellaneous/LaTeX/report* $argv
    cd $argv
    vim report.tex
end
