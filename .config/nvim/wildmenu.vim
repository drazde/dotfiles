" Wildmenu completion
set wildmenu                          " Tab autocomplete in command mode
set wildignore+=*.so
set wildignore+=*.zip
set wildignore+=*.dcu                            " delphi compiled files
set wildignore+=*/tmp/*
set wildignore+=*/vendor/bundle/*
set wildignore+=*/node_modules/
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.class
set wildignore+=*.ttf
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*__history/*                     " delphi history
set wildignore+=*.sencha/*                       " sencha lib
set wildignore+=*cordova/*                       " cordova lib
set wildignore+=Thumbs.db                        " Thumbs.db files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip         " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe      " Windows

