function peco_select_branch -d "select git branch checkout"
    commandline | read -l buffer
    git branch | sed 's/^\*/ /' | awk '{ print $1 }' | peco | read -l line
    if [ $line ]
        git checkout "$buffer$line"
    end
    commandline -f repaint
end
