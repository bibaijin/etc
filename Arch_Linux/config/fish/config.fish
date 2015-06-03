# 环境变量
set -x LC_CTYPE zh_CN.UTF-8
set -x LC_COLLATE zh_CN.UTF-8
add_to_path $HOME/bin /usr/local/bin $HOME/.cabal/bin $HOME/.gem/ruby/2.1.0/bin
set -x PYTHONPATH /home/bibaijin/src/python/introduction_to_algorithms/ $PYTHONPATH
set -x EDITOR vim

# 插件
# source ~/.config/fish/autojump.fish

# ######################
# Pacman alias examples
# ######################

# Synchronize with repositories and then upgrade packages that are out of date
# on the local system.
alias pacupg "sudo pacman -Syu"

# Install specific package(s) from the repositories
alias pacin "sudo pacman -S"

# Install specific package not from the repositories but from a file 
alias pacins "sudo pacman -U"

# Remove the specified package(s), retaining its configuration(s) and required
# dependencies
alias pacre "sudo pacman -R"

# Remove the specified package(s), its configuration(s) and unneeded
# dependencies
alias pacrem "sudo pacman -Rns"

# Display information about a given package in the repositories
alias pacrep "pacman -Si"

# Search for package(s) in the repositories
alias pacreps "pacman -Ss"

# Display information about a given package in the local database
alias pacloc "pacman -Qi"

# Search for package(s) in the local database
alias paclocs "pacman -Qs"

# List all packages which are orphaned
alias paclo "pacman -Qdt"

# Clean cache - delete all not currently installed package files
alias pacc "sudo pacman -Scc"

# List all files installed by a given package
alias paclf "pacman -Ql"

# Mark one or more installed packages as explicitly installed 
alias pacexpl "pacman -D --asexp"

# Mark one or more installed packages as non explicitly installed
alias pacimpl "pacman -D --asdep"

# '[r]emove [o]rphans' - recursively remove ALL orphaned packages
alias pacro 'pacman -Qtdq > /dev/null; and sudo pacman -Rns (pacman -Qtdq | sed -e \':a;N;$!ba\')'

# Additional pacman alias examples

# Update and refresh the local package and ABS databases against repositories
alias pacupd "sudo pacman -Sy; and sudo abs"

# Install given package(s) as dependencies
alias pacinsd "sudo pacman -S --asdeps"

# Force refresh of all package lists after updating /etc/pacman.d/mirrorlist
alias pacmir "sudo pacman -Syy"

# ######################
# My Alias
# ######################

# alias cp "acp -g"
# alias mv "amv -g"
# alias maxima "rmaxima"
# alias racket "racket -il readline"
alias scheme-my "rlwrap -r -c -f /home/bibaijin/.config/scheme/completion.txt scheme"
alias reboot "sudo reboot"
alias poweroff "sudo poweroff"

# start X at login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx
    end
end
