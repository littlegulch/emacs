(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wheatgrass)))
 '(ergoemacs-ctl-c-or-ctl-x-delay 0.2)
 '(ergoemacs-handle-ctl-c-or-ctl-x (quote both))
 '(ergoemacs-ini-mode t)
 '(ergoemacs-keyboard-layout "colemak")
 '(ergoemacs-mode nil)
 '(ergoemacs-smart-paste nil)
 '(ergoemacs-theme "standard")
 '(ergoemacs-theme-options nil)
 '(ergoemacs-use-menus t)
 '(inhibit-startup-screen t)
 '(initial-scratch-message ";; Scratch away...

")
 '(line-number-mode nil)
 '(org-CUA-compatible nil)
 '(org-special-ctrl-a/e nil)
 '(org-support-shift-select nil)
 '(scroll-error-top-bottom nil)
 '(set-mark-command-repeat-pop nil)
 '(shift-select-mode t)
 '(tool-bar-mode nil)
 '(tool-bar-position (quote top)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans" :foundry "unknown" :slant normal :weight normal :height 151 :width normal)))))
(package-initialize)
;; Enable transient mark mode
(transient-mark-mode 1)

;;;;org-mode configuration
;; Enable org-mode
(require 'org)

(require 'ergoemacs-mode)
(setq ergoemacs-theme nil)
(setq ergoemacs-keyboard-layout "colemak")
(require 'ergoemacs-mode)
(global-set-key (kbd "M-g") 'next-buffer)
(global-set-key (kbd "M-'") 'newline)
(ergoemacs-mode 1)
(global-visual-line-mode 1)
;;(global-set-key (kbd "M-'") 'newline-and-indent)
(global-set-key (kbd "M-]") 'outline-next-visible-heading)
(global-set-key (kbd "M-[") 'outline-previous-visible-heading)
(add-hook 'text-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (setq tab-width 2)
             (setq indent-line-function (quote insert-tab))))
(add-to-list 'load-path "emacs.d/wc-mode/")
(require 'wc-mode)
(global-set-key (kbd "<f9>") 'wc-mode)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(setq-default line-spacing 10) 
(set-face-foreground 'mode-line "#442222")
(set-face-background 'mode-line "#111111")
(set-face-background 'mode-line-inactive "#000000")
