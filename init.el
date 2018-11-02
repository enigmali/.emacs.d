;; GUI SETTINGS
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;; initial window
(setq initial-frame-alist'((width . 164)(height . 78)))
;; default/sebsequent window
(setq default-frame-alist'((width . 164)(height . 78)))

;; EDITOR SETTINGS
(setq inhibit-startup-message t)
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))
(setq column-number-mode t)
(global-hl-line-mode 1)
(show-paren-mode 1)
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

;; PACKAGE SETTING
(require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
  '(package-selected-packages
   (quote
    (elixir-mode json-mode smex auto-complete yasnippet-snippets yasnippet smart-mode-line spacemacs-theme evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; PLUGIN SETTINGS
(require 'evil)
(evil-mode 1)

(load-theme 'spacemacs-dark)

(sml/setup)
(setq sml/no-confirm-load-theme t)
(setq sml/theme 'respectful)

(require 'yasnippet)
(yas-global-mode 1)

;;(add-hook 'after-init-hook 'global-company-mode)
(ac-config-default)
(setq-default ac-sources (push 'ac-source-yasnippet ac-sources))

(require 'smex) ; Not needed if you use package.el
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
