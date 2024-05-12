(
 (nil . ((vg-project-tasks . (
                              ("Refresh Themes" . (lambda()
                                                    (vg-shell-command-in-project-root "cp ./emacs/work-theme.el ~/Dotfiles/.emacs-config/themes/" t)
                                                    (load-theme 'work t)
                                                    ))
                              ))))
 )
