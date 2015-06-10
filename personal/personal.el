;; =============================================================================
;; emacs-eclim
;;
;; Note compliation-scroll-output set here!
;;
(prelude-require-packages '(auto-complete
                            emacs-eclim
                            multiple-cursors))

(require 'eclim)
(require 'eclimd)
(require 'eclim-completion)

(setq eclim-auto-save t
      eclim-executable (expand-file-name "~/eclipse/auscope/eclim"))
(global-eclim-mode)

(setq compilation-scroll-output t)

;; Display help for current pointer
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

;; DO NOT clean up whitespace on save!
(setq prelude-clean-whitespace-on-save nil)

;; ;; =============================================================================
;; ;; auto-complete with eclim support
;; ;;
;; ;; regular auto-complete initialization
;; (require 'auto-complete-config)
;; (ac-config-default)

;; ;; add the emacs-eclim source
;; (require 'ac-emacs-eclim-source)
;; (ac-emacs-eclim-config)

;; ;; Only auto-complete when I request it using M-/
;; (setq ac-auto-start nil)
;; (global-set-key "\M-/" 'auto-complete)

;; =============================================================================
;; User company-mode for auto completion, including eclim support
;;
(require 'company)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)

;; =============================================================================
;; Python support with elpy
;;
(prelude-require-packages '(elpy))
(elpy-enable)

;; =============================================================================
;; SPARQL mode
;;
(prelude-require-packages '(sparql-mode))

;; =============================================================================
;; Web mode
;;
(add-hook 'web-mode-hook (lambda ()
                           (local-set-key (kbd "C-c /") 'web-mode-element-close)))

;; =============================================================================
;; Twitter!
;;
(prelude-require-packages '(twittering-mode))


;; =============================================================================
;; Projectile
;;
(setq projectile-switch-project-action 'projectile-dired)

;; =============================================================================
;; Magit stuff
;;
(setq magit-last-seen-setup-instructions "1.4.0")
(define-key prelude-mode-map (kbd "s-g") nil)
(define-key prelude-mode-map (kbd "s-g m") 'magit-status)
(define-key prelude-mode-map (kbd "s-g l") 'magit-log)
(define-key prelude-mode-map (kbd "s-g f") 'magit-file-log)
(define-key prelude-mode-map (kbd "s-g b") 'magit-blame-mode)
