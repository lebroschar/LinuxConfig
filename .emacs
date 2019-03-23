(setq column-number-mode t)

(global-set-key [delete] 'delete-char)
(global-set-key [M-delete] 'kill-word)

(setq inhibit-splash-screen t)

(add-hook 'python-mode-hook
      (lambda ()
        (setq indent-tabs-mode nil)
        (setq tab-width 4)
	))


