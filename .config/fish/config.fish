#if exa --version >/dev/null
#	set -U fish_user_abbreviations $fish_user_abbreviations 'l=exa'
#	set -U fish_user_abbreviations $fish_user_abbreviations 'ls=exa'
#	set -U fish_user_abbreviations $fish_user_abbreviations 'll=exa -l'
#	set -U fish_user_abbreviations $fish_user_abbreviations 'lll=exa -la'
#else
#	set -U fish_user_abbreviations $fish_user_abbreviations 'l=ls'
#	set -U fish_user_abbreviations $fish_user_abbreviations 'll=ls -l'
#	set -U fish_user_abbreviations $fish_user_abbreviations 'lll=ls -la'
#end

# show inf on my so
#neofetch

function mp3
    youtube-dl --continue --ignore-errors --add-metadata --embed-thumbnail --extract-audio --audio-format mp3 $argv;
end;

function mount-android
    go-mtpfs /mnt/key
end
function umount-android
    fusermount /mnt/key
end;

function config 
    /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end;

function doc 
    /usr/bin/git --git-dir=$HOME/doc/.git/ --work-tree=$HOME/doc $argv
end;
