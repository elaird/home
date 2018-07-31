(menu-bar-mode 0)
(tool-bar-mode 0)
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

;; custom mode bindings
(require 'cmake-mode)

(setq auto-mode-alist
      (append
       '(("\\PKGBUILD$" . sh-mode))
       '(("\\.tex\\'" . latex-mode))
       '(("\\.h$"       . c++-mode))
       auto-mode-alist))
