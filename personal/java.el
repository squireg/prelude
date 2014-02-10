;; Use eclim
(prelude-require-packages '(emacs-eclim))

(require 'eclim)
(require 'eclimd)
(require 'eclim-completion)

(setq eclim-auto-save t
      eclim-executable (expand-file-name "~/eclipse/eclim"))
(global-eclim-mode)

(setq compilation-scroll-output t)

;; Display help for current pointer
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)
