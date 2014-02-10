;; Use eclim
(prelude-require-packages '(emacs-eclim))

(setq eclim-auto-save t
      eclim-executable (expand-file-name "~/eclipse/eclim"))
(global-eclim-mode)

(setq compilation-scroll-output t)

