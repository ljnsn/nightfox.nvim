#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: oxifox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/oxifox/oxifox.tmux
set -g mode-style "fg=#191726,bg=#cdcbe0"
set -g message-style "fg=#191726,bg=#cdcbe0"
set -g message-command-style "fg=#191726,bg=#cdcbe0"
set -g pane-border-style "fg=#cdcbe0"
set -g pane-active-border-style "fg=#3068ac"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#cdcbe0,bg=#191726"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#191726,bg=#3068ac,bold] #S #[fg=#3068ac,bg=#191726,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#191726,bg=#191726,nobold,nounderscore,noitalics]#[fg=#3068ac,bg=#191726] #{prefix_highlight} #[fg=#cdcbe0,bg=#191726,nobold,nounderscore,noitalics]#[fg=#191726,bg=#cdcbe0] %Y-%m-%d  %I:%M %p #[fg=#3068ac,bg=#cdcbe0,nobold,nounderscore,noitalics]#[fg=#191726,bg=#3068ac,bold] #h "
setw -g window-status-activity-style "underscore,fg=#6e6a86,bg=#191726"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#6e6a86,bg=#191726"
setw -g window-status-format "#[fg=#191726,bg=#191726,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#191726,bg=#191726,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#191726,bg=#cdcbe0,nobold,nounderscore,noitalics]#[fg=#191726,bg=#cdcbe0,bold] #I  #W #F #[fg=#cdcbe0,bg=#191726,nobold,nounderscore,noitalics]"
