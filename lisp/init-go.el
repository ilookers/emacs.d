(require 'init-elpa)

(require-package 'go-mode)
(require-package 'company-go)

(require 'go-mode)

(add-hook 'go-mode-hook
	  '(lambda ()
	     (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

(add-hook 'go-mode-hook
	  '(lambda ()
	     (local-set-key (kdb "C-c C-f") 'gofmt)))

(add-hook 'before-save-hook 'gofmt-before-save)

(add-hook 'go-mode-hook 'company-mode)

(add-hook 'go-mode-hook
	  '(lambda ()
	     (set (make-local-variable 'company-backends) '(company-go))
	     (company-mode)))

(provide 'init-go)
