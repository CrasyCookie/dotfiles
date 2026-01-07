;; Most of the configs are located in the configs/ folder.

;; Add the configs/ directory to load-path
(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))
(eval-and-compile (add-to-list 'load-path (locate-user-emacs-file "configs/")))
;;(add-to-list 'load-path "/home/cookie/.config/emacs/configs/")

(require 'packages)
(require 'values-variables)
(require 'functions)
(require 'keybindings)
(require 'configurations)
(require 'language-configs)

;; == Automatically added stuff ==

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("0f1341c0096825b1e5d8f2ed90996025a0d013a0978677956a9e61408fcd2c77"
     default))
 '(package-selected-packages nil)
 '(package-vc-selected-packages '((tinee :url "https://codeberg.org/tusharhero/tinee.git"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
