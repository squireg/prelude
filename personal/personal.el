;; =============================================================================
;; emacs-eclim
;;
;; Note compliation-scroll-output set here!
;;
(prelude-require-packages '(auto-complete
                            emacs-eclim))

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

;; =============================================================================
;; auto-complete with eclim support
;;
;; regular auto-complete initialization
(require 'auto-complete-config)
(ac-config-default)

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)

;; Only auto-complete when I request it using M-/
(setq ac-auto-start nil)
(global-set-key "\M-/" 'auto-complete)
