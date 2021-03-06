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

 alias vi='$HOME/local/nvim/bin/nvim'
alias ll='ls -la'

# doftiles
function config 
    /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end;

function doc 
    /usr/bin/git --git-dir=$HOME/doc/.git/ --work-tree=$HOME/doc $argv
end;

#function media2smart_tv
#    ffmpeg -i $argv -map 0:v -map 0:a -c:v h264 -c:a aac -->nome file
#end;
    

function youtube-dl-mp3
    youtube-dl --continue --ignore-errors --add-metadata --embed-thumbnail --extract-audio --audio-format mp3 $argv;
end;

function mount-android
    go-mtpfs /mnt/key
end
function umount-android
    fusermount -u /mnt/key
end;


#fish_add_path "$HOME/.node_modules/bin" # fish >= 3.2.0
set -x PATH "$HOME/.node_modules/bin:$PATH"
set -x PATH "$HOME/bin:$PATH"
set -x npm_config_prefix ~/.node_modules
