;; ========================================
;;      This file features keybindings
;; ========================================

(require 'functions)
(provide 'keybindings)

;; == C-c ==

;; C-c d for opening special buffers
(global-set-key (kbd "C-c C-d i") 'ibuffer)
(global-set-key (kbd "C-c C-d s") 'scratch-buffer)
(global-set-key (kbd "C-c C-d e") 'elfeed)
(global-set-key (kbd "C-c C-d w") 'eww)

;; C-c o is for org-mode commands
(global-set-key (kbd "C-c o f") 'find-file-in-notes-dir)

;; == Rebind keys ==
(global-set-key (kbd "C-x o") 'ace-window)

;; -- Helm --
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
;; Part of package swiper-helm
(global-set-key (kbd "C-s") 'swiper-helm)
