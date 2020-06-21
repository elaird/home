(menu-bar-mode 0)
;(tool-bar-mode 0)
(blink-cursor-mode 0)
(setq ring-bell-function 'ignore)
(setq-default indent-tabs-mode nil)

(global-font-lock-mode 1)
(show-paren-mode 1)
(transient-mark-mode 1)
(set-default 'truncate-lines t)

(normal-erase-is-backspace-mode 0)
(define-key key-translation-map [?\C-h] [?\C-?])

(line-number-mode 1)
(column-number-mode 1)

(global-set-key "\M-g" 'goto-line)

;; (require 'package)
;; (add-to-list 'package-archives
;;              '("melpa" . "https://melpa.org/packages/") t)
;; (package-initialize)
;; (package-refresh-contents)

(setq rust-format-on-save t)

(setq auto-mode-alist
      (append
       '(("\\PKGBUILD$" . sh-mode))
       '(("\\.tex$"     . latex-mode))
       '(("\\.dot$"     . conf-mode))
       '(("\\.h$"       . c++-mode))
       auto-mode-alist))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(go-mode cmake-mode markdown-mode rust-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
