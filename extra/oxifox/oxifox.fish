# Nightfox Color Palette
# Style: oxifox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/oxifox/oxifox.fish
set -l foreground C9CCCD
set -l selection 214760
set -l comment 5D6976
set -l red db6e89
set -l orange f49810
set -l yellow d0d6b5
set -l green bfdeba
set -l purple 94558d
set -l cyan 0f9795
set -l pink b87ea2

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
