(menu-bar-mode 0)
(blink-cursor-mode 0)

(global-font-lock-mode 1)
(show-paren-mode 1)
(transient-mark-mode 1)

(normal-erase-is-backspace-mode 0)
(global-set-key "\M-g" 'goto-line)

;; custom mode bindings
(setq auto-mode-alist
      (append
       '(("\\dwm-6.0\\'"  . c-mode))
       '(("\\.ebuild\\'" . sh-mode))
       '(("\\.tex\\'" . latex-mode))
       '(("\\.h$"       . c++-mode))
       ;;'(("CMakeLists\\.txt\\'" . cmake-mode));; emacs use flag
       ;;'(("\\.cmake\\'" . cmake-mode))
       auto-mode-alist))

;;(autoload 'cmake-mode "~/cmake-mode.el" t)
