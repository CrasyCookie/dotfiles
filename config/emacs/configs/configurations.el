;; ========================================
;;  This file contains some configurations
;; ========================================

(provide 'configurations)

;; == Values and formats ==

(setq display-time-format "%H:%M"
      display-time-load-average-threshold 0.0)

(setq calendar-week-start-day 1) ;; Monday

;; == Interface ==

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(tooltip-mode 1)

;; Margins on the screen:
;;(set-fringe-mode 10) ;; Might remove or change

;; Show a ruler at column 80
(global-display-fill-column-indicator-mode)
(setq display-fill-column-indicator-column 80)
(set-fill-column 80)

;; Font
(set-face-attribute 'default nil :font "Noto Sans Mono" :height 110)

;; Solarized
(load-theme 'doom-solarized-light t)

;; org-modern for org-mode
(add-hook 'org-mode-hook #'org-modern-mode)
(add-hook 'org-agenda-finalize-hook #'org-modern-agenda)

;; This determines the style of line numbers in effect. If set to 'nil', line
;; numbers are disabled. For relative line numbers, set this to 'relative'.
;;(setq display-line-numbers-type t)
;;(setq display-line-numbers-type 'relative)

;; -- Top-bar configuration --

(display-time-mode 1)
(display-battery-mode 1)
(column-number-mode 1)

;; Move mode-line to header-line
(setq-default header-line-format mode-line-format)
(setq-default mode-line-format nil)

;; == Functionality ==
(setq inhibit-startup-screen t)
(setq visible-bell t)

;; Set *scratch* to org-mode/fundamental-mode instead of elisp evaluation
;;(setq initial-major-mode 'org-mode)
(setq initial-major-mode 'fundamental-mode)
(setq initial-scratch-message "")

;; Download video when using empv
;(add-to-list 'empv-mpv-args "--ytdl-format=bestvideo+bestaudio/best[ext=mp4]/best")

;; Save video positions when exiting mpv
;(add-to-list 'empv-mpv-args "--save-position-on-quit")

(setq vc-handled-backends '(git))

;; emms configuration
(emms-all)
(emms-standard)
(emms-default-players)
(setq emms-player-list '(emms-player-mpv))
;;(setq emms-player-list '(emms-player-mpv)
;;      emms-info-functions '(emms-info-native)
;;      emms-show-format "Playing %s")

;; -- Org-node --
(setq org-node-backlink-do-drawers t)
(org-node-backlink-mode)

(setq indent-tabs-mode nil)

;;(editorconfig-mode 1)
