;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; always end a file with a newline
;(setq require-final-newline 'query)

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)






;;; CUSTOM EMACS SETUP BELOW

; BASIC PACKAGE STUFF
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/")) ; add more packages
(add-to-list 'load-path "~/.emacs.d/lisp/") ; load custom emacs scripts
(autoload 'qchem-mode "qchemMode" "Some documentation." t)
(add-to-list 'auto-mode-alist '("\\.in\\'" . qchem-mode)) ; open .in files in qchem mode
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files
(menu-bar-mode -1) ; get rid of menu bar
(ido-mode) ; start ido mode




; INDENTATION
(setq-default indent-tabs-mode nil) ; indent with 4 spaces
(setq-default tab-width 4)
(setq tab-stop-list (number-sequence 4 200 4))
(setq-default c-basic-offset 4) ; set indentation for c
(c-set-offset (quote cpp-macro) 0 nil)




; MAKE THINGS PRETTY
(setq-default show-trailing-whitespace t) ; show trailing whitespace
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode) ; start rainbow delimiters
(defun on-after-init () ;; get rid of background color
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))
(add-hook 'window-setup-hook 'on-after-init)
; (global-linum-mode 1)
; (set-face-foreground 'linum "color-251")




; COLORS AND STUFF
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector [default default default italic underline success warning error])
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (wheatgrass)))
 '(custom-safe-themes (quote ("4e40a169a687e8b409b0ce8da6b492523f3190ef778801ce1754c07b423bcaf7" "94ba0f418f96c8cb00d351a12b321c42395e54c1d4ffe4d66d542546d5c3d926" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" "19ba4\
1b6dc0b5dd34e1b8628ad7ae47deb19f968fe8c31853d64ea8c4df252b8" "b34636117b62837b3c0c149260dfebe12c5dad3d1177a758bb41c4b15259ed7e" "7527f3308a83721f9b6d50a36698baaedc79ded9f6d5bd4e9a28a22ab13b3cb1" default)))
 '(delete-selection-mode nil)
 '(package-selected-packages (quote (spacegray-theme underwater-theme subatomic-theme nord-theme rainbow-delimiters))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "dark orange"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "deep pink"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "chartreuse"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "sienna1")))))
