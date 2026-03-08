;; ========================================
;;  This file contains package management
;; ========================================

(provide 'packages)
(require 'package)
(require 'package-vc)

(add-to-list 'package-archives
	     '(("melpa" . "https://melpa.org/packages/")
	       ("org" . "https://orgmode.org/elpa/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialise use-package on non-linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; == use-package things ==

(require 'use-package)
(setq use-package-always-ensure t)
(setq use-package-always-defer t)

;;(use-package doom-themes :demand t)

(use-package ace-window :demand t)

(use-package helm :demand t)
(use-package swiper-helm :demand t)
(helm-mode t)

;; Disable LSPs from doing unnecessary things like rewriting the file
;; to fit the "correct" style (/cough cough/ clangd) while editing it.
;; (use-package eglot
;;   :custom (eglot-ignored-server-capabilities '(:documentOnTypeFormattingProvider)))

;;(use-package docker
;;  :ensure t
;;  :bind ("C-c d" . docker))

(use-package devil :demand t)
(global-devil-mode t)

;; Required for org-node
(use-package org-mem
  :defer t
  :config
  ;; At least one of these two is needed
  (setq org-mem-do-sync-with-org-id t)
  ;;(setq org-mem-watch-dirs
        ;;(list "~/org"))
  (org-mem-updater-mode))

(use-package org-node
  :init
  ;; Optional key bindings
  (keymap-global-set "M-o" org-node-global-prefix-map)
  (with-eval-after-load 'org
    (keymap-set org-mode-map "M-o" org-node-org-prefix-map))
  :config
  (org-node-cache-mode))

(use-package magit)
(use-package forge)

;; A bit like undo-tree
;;(use-package vundo)
