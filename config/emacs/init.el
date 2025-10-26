;; ==========================
;; Initialise package sources
;; ==========================
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialise use-package on non-linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t) ;; Dunno what this does

;; ================
;; Install packages
;; ================

(use-package doom-themes)

(use-package ace-window)

(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
	 :map ivy-minibuffer-map
	 ("TAB" . ivy-alt-done)
	 ("C-l" . ivy-alt-done)
	 ("C-j" . ivy-next-line)
	 ("C-k" . ivy-previous-line)
	 :map ivy-switch-buffer-map
	 ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
	 ("C-d" . ivy-switch-buffer-kill)
	 :map ivy-reverse-i-search-map
	 ("C-k" . ivy-previous-line)
	 ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))
(ivy-mode 1)

(use-package swiper :ensure t)

(use-package org-modern)

(use-package elfeed)

;(use-package empv)
;(setq empv-invidious-instance "https://yewtu.be/api/v1")
;(empv-toggle-video)

(use-package emms)
(use-package emms-player-spotify)
(use-package emms-state)

;(use-package emacs-everywhere)

;; I hate clangd I hate clangd I hate clangd
(use-package eglot
             :custom (eglot-ignored-server-capabilities '(:documentOnTypeFormattingProvider)))

;; =======================
;; Customise the interface
;; =======================

(scroll-bar-mode -1)     ;; Disable visible scrollbar
(tool-bar-mode -1)       ;; Disable the toolbar? Why??
(tooltip-mode -1)        ;; Disable tooltips? Why???
(set-fringe-mode 10)     ;; Give some breathing room? WHAT DOES THAT MEAN!?

(menu-bar-mode -1)       ;; Disable the menu bar

(setq calendar-week-start-day 1)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;(setq display-line-numbers-type t)
(setq display-line-numbers-type 'relative)

;; Show a ruler at column 80
(global-display-fill-column-indicator-mode)
(setq display-fill-column-indicator-column 80)

(setq display-time-format "%H:%M"
    display-time-load-average-threshold 0.0)

(display-time-mode 1)

(add-hook 'org-mode-hook #'org-modern-mode)
(add-hook 'org-agenda-finalize-hook #'org-modern-agenda)

;; Visible bell
(setq visible-bell t)

;; Font
(set-face-attribute 'default nil :font "Noto Sans Mono" :height 110)

;; Solarized
(load-theme 'doom-solarized-light t)

;; ===============
;;    RSS feeds
;; ===============

(setq elfeed-feeds
      '("https://codeberg.org/forgejo/forgejo/releases.rss"
	"https://rss-bridge.org/bridge01/?action=display&bridge=MinecraftBridge&format=Atom"
	"https://www.debian.org/News/news"
	"https://bits.debian.org/feeds/atom.xml"
	"http://www.debian.org/security/dsa-long"
	"https://www.phoronix.com/phoronix-rss.php"
	"https://planet.kde.org/atom.xml"
	"https://www.omglinux.com/feed"
	"https://9to5linux.com/feed/atom"))

;; ===============
;; Set keybindings
;; ===============

(global-set-key (kbd "C-x o") 'ace-window)     ;; Use ace-window

;; ===============
;; Per language configuration
;; ===============

;; Enable the linux style for C code
(setq c-default-style "otbs")
(setq c-basic-offset 4
      tab-width 4
      indent-tabs-mode nil)

;; ==============
;;     Other
;; ==============

;; Add go executable tools to path
(add-to-list 'exec-path "/home/cookie/PackageManagers/go/bin")

;; Move mode-line to header-line
(setq-default header-line-format mode-line-format)
(setq-default mode-line-format nil)

;; Download video when using empv
;(add-to-list 'empv-mpv-args "--ytdl-format=bestvideo+bestaudio/best[ext=mp4]/best")

;; Save video positions when exiting mpv
;(add-to-list 'empv-mpv-args "--save-position-on-quit")

;; emms configuration
(emms-all)
(emms-standard)
(emms-default-players)
(setq emms-player-list '(emms-player-mpv))
;(setq emms-player-list '(emms-player-mpv)
;      emms-info-functions '(emms-info-native)
;      emms-show-format "Playing %s")

;; =========================
;; Automatically added stuff
;; =========================

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("0f1341c0096825b1e5d8f2ed90996025a0d013a0978677956a9e61408fcd2c77"
     default))
 '(package-selected-packages
   '(ace-window doom-modeline doom-themes elfeed emacs-everywhere
		emms-player-spotify emms-state empv go-mode json-mode
		lua-mode markdown-mode org-modern swiper yaml-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
