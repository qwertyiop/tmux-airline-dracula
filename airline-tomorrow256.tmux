#!/usr/bin/env bash

main() {

  ## Colors
  black='colour0'
  white='colour254'
  gray='colour236'
  dark_gray='colour236'
  yellow='colour221'
  light_blue='colour111'
  dark_blue='colour75'

  ## Icons
  left_sep=''
  right_sep=''
  right_alt_sep=''

  tmux set-option -g status on
  tmux set-option -g status-left-length 100
  tmux set-option -g status-right-length 100
  tmux set-option -g status-bg "${dark_gray}"
  tmux set-option -g pane-active-border-fg "${light_blue}"
  tmux set-option -g pane-border-fg "${gray}"
  tmux set-option -g message-bg "${gray}"
  tmux set-option -g message-fg "${white}"
  tmux set-option -g message-command-bg "${gray}"
  tmux set-option -g message-command-fg "${white}"
  tmux set-option -g status-left " #I #[fg=${dark_gray},reverse]${right_sep} "
  tmux set-option -g status-left-style "fg=${white},bg=${light_blue},bold"
  tmux set-option -g status-right "${left_sep}#[bg=${black},reverse] %Y-%m-%d %H:%M "
  tmux set-option -g status-right-style "fg=${dark_blue},bg=${dark_gray}"
  tmux set-window-option -g window-status-activity-style "fg=${white},bg=${gray}"
  tmux set-window-option -g window-status-separator ''
  tmux set-window-option -g window-status-format ' #I #W '
  tmux set-window-option -g window-status-style "fg=${yellow},bg=${dark_gray}"
  tmux set-window-option -g window-status-current-format \
    "${right_sep}#[fg=${black}] #I ${right_alt_sep} #W #[fg=${dark_gray},reverse]${right_sep}"
  tmux set-window-option -g window-status-current-style "fg=${dark_gray},bg=${dark_blue}"
}

main

# vim: set filetype=bash
