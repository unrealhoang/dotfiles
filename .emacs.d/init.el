;; Package configs
(require 'package)

;;;; CODE:
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; (require 'help-fns+)

;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; PATH
(let ((path (shell-command-to-string ". ~/.zshrc; echo -n $PATH")))
  (setenv "PATH" path)
  (setq exec-path
	(append
	 (split-string-and-unquote path ":")
	 exec-path)))

;; Some term enhancement
(defadvice term-sentinel (around my-advice-term-sentinel (proc msg))
  (if (memq (process-status proc) '(signal exit))
      (let ((buffer (process-buffer proc)))
	ad-do-it
	(kill-buffer buffer))
    ad-do-it))
(ad-activate 'term-sentinel)

(defadvice ansi-term (before force-bash)
  "Open terminal."
  (interactive (list "/bin/zsh")))
(ad-activate 'ansi-term)


;; Other configs
(setq make-backup-files nil)
(setq auto-save-default nil)
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; Splash Screen
(setq inhibit-startup-screen t)
(setq initial-scratch-message ";; Happy Hacking")

;; Show matching parens
(setq show-paren-delay 0)
(show-paren-mode  1)

;; Paragraph movement
(global-set-key (kbd "s-j") 'forward-paragraph)
(global-set-key (kbd "s-k") 'backward-paragraph)

;; Keybinding for term mode
(add-hook 'term-mode
	  (lambda () (global-set-key (kbd "s-v") 'term-paste)))

;; OrgMode Configs
(setq org-html-validation-link nil)
(setq org-todo-keywords
      '((sequence "TODO" "WORKING" "HOLD" "|" "DONE")))
(setq org-todo-keyword-faces
      '(("TODO"    . "blue")
	("WORKING" . "yellow")
	("HOLD"    . "red")
	("DONE"    . "green")))

;; UI configurations
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)
(global-linum-mode 1)
(add-to-list 'default-frame-alist '(font . "Fira Code-12"))
(add-to-list 'default-frame-alist '(height . 24))
(add-to-list 'default-frame-alist '(width . 80))
(add-to-list 'default-frame-alist '(font-backend . "pango"))

;; Vim mode
(use-package evil
  :ensure t
  :init
  (setq evil-want-C-u-scroll t)
  (with-eval-after-load 'evil
    (defalias #'forward-evil-word #'forward-evil-symbol))
  (add-hook 'ruby-mode
	    (lambda () (setq evil-shift-width 2)))
  :config
  (define-key evil-insert-state-map (kbd "C-n") nil)
  (define-key evil-insert-state-map (kbd "C-o") nil)
  (evil-mode 1))

(use-package evil-escape
  :ensure t
  :init
  :config
  (evil-escape-mode 1))

;; Anzu for search matching
(use-package anzu
  :ensure t
  :config
  (global-anzu-mode 1)
  (global-set-key [remap query-replace-regexp] 'anzu-query-replace-regexp)
  (global-set-key [remap query-replace] 'anzu-query-replace))

;; Theme
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t))

(use-package doom-modeline
  :ensure t
  :config
  (setq doom-modeline-lsp t)
  (setq doom-modeline-env-enable-rust t)
  (setq doom-modeline-minor-modes t)
  :hook
  (after-init . doom-modeline-mode))
;; Helm
(use-package helm
  :ensure t
  :init
  (setq helm-M-x-fuzzy-match t
	helm-mode-fuzzy-match t
	helm-buffers-fuzzy-matching t
	helm-recentf-fuzzy-match t
	helm-locate-fuzzy-match t
	helm-semantic-fuzzy-match t
	helm-imenu-fuzzy-match t
	helm-completion-in-region-fuzzy-match t
	helm-candidate-number-list 80
	helm-split-window-in-side-p t
	helm-move-to-line-cycle-in-source t
	helm-echo-input-in-header-line t
	helm-autoresize-max-height 0
	helm-autoresize-min-height 20)
  :config
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  (define-key helm-map (kbd "C-z") 'helm-select-action)
  (define-key helm-map (kbd "C-[") 'helm-keyboard-quit)
  (define-key helm-map (kbd "<escape>") 'helm-keyboard-quit)
  (helm-mode 1))

;; RipGrep
(use-package helm-rg :ensure t)

;; Projectile
(use-package projectile
  :ensure t
  :init
  (setq projectile-require-project-root nil)
  :config
  (projectile-mode 1))

;; Helm Projectile
(use-package helm-projectile
  :ensure t
  :init
  (setq helm-projectile-fuzzy-match t)
  :config
  (helm-projectile-on))

;; All The Icons
(use-package all-the-icons :ensure t)

;; NeoTree
(use-package neotree
  :ensure t
  :init
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

;; Which Key
(use-package which-key
  :ensure t
  :init
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :config
  (which-key-mode))

(defun open-config-file ()
  "Open Emacs config."
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(defun reload-config-file ()
  "Reload Emacs config."
  (interactive)
  (load-file "~/.emacs.d/init.el"))

;; Custom keybinding
(use-package general
  :ensure t
  :config (general-define-key
	   :states '(normal visual insert emacs)
	   :prefix "SPC"
	   :non-normal-prefix "M-SPC"
	   "/"   '(helm-projectile-rg :which-key "ripgrep")
	   "TAB" '(evil-switch-to-windows-last-buffer :which-key "previous buffer")
	   "SPC" '(helm-M-x :which-key "M-x")
	   "pf"  '(helm-projectile-find-file :which-key "find files")
	   "pp"  '(helm-projectile-switch-project :which-key "switch project")
	   "pb"  '(helm-projectile-switch-to-buffer :which-key "switch buffer")
	   "pr"  '(helm-show-kill-ring :which-key "show kill ring")
	   ;; Buffers
	   "bb"  '(helm-mini :which-key "buffers list")
	   ;; Window
	   "wl"  '(windmove-right :which-key "move right")
	   "wh"  '(windmove-left :which-key "move left")
	   "wk"  '(windmove-up :which-key "move up")
	   "wj"  '(windmove-down :which-key "move bottom")
	   "w/"  '(split-window-right :which-key "split right")
	   "w-"  '(split-window-below :which-key "split bottom")
	   "wx"  '(delete-window :which-key "delete window")
	   "qz"  '(delete-frame :which-key "delete frame")
	   "qq"  '(kill-emacs :which-key "quit")
	   ;; NeoTree
	   "ft"  '(neotree-toggle :which-key "toggle neotree")
	   ;; Others
	   "at"  '(ansi-term :which-key "open terminal")
	   ;; Config
	   "cc"  '(open-config-file :which-key "open config file")
	   "cr"  '(reload-config-file :which-key "config reload")
	   ;; Execute
	   "e"   '(eval-last-sexp :which-key "eval expression")
	   ;; Documentation
	   "ds"	'(lsp-describe-thing-at-point :which-key "show doc")
	   ))

;; Fancy titlebar for MacOS
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon  nil)
(setq frame-title-format nil)

;; (require 'rvm)
;; LSP
(use-package lsp-mode
  :ensure t
  :config
  (setq lsp-print-io t)
  (setq lsp-rust-rls-command '("rls"))
  (setenv "RUST_BACKTRACE" "full")
  (setenv "RUST_LOG" "rls::=debug")
  (unless (fboundp 'lsp-rust-enable)
    (defun diabolo-lsp-rust-window-progress (_workspace params)
      "Progress report handling.
PARAMS progress report notification data."
      ;; Minimal implementation - we could show the progress as well.
      (setq id (gethash "id" params))
      (setq title (gethash "title" params))
      (setq msg (gethash "message" params))
      (setq done (gethash "done" params))
      (message "RLS: %s%s%s"
	       title
	       (if msg (format " \"%s\"" msg) "")
	       (if done " done" "")))

    (defun lsp-rust-enable ()
      (interactive)
      (require 'lsp-clients)
      ;; We don't realy need lsp-rust-rls-command for now, but we will support it
      (when (boundp 'lsp-rust-rls-command)
	(lsp-register-client
	 (make-lsp-client :new-connection (lsp-stdio-connection lsp-rust-rls-command)
			  :major-modes '(rust-mode)
			  :server-id 'rls
			  :notification-handlers (lsp-ht ("window/progress" 'diabolo-lsp-rust-window-progress)))))
      (lsp))))

(use-package lsp-ui
  :ensure t
  :init
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))

;; Company mode
(use-package company
  :ensure t
  :init
  (setq company-minimum-prefix-length 3)
  (setq company-auto-complete nil)
  (setq company-idle-delay nil)
  (setq company-require-match 'never)
  (setq company-frontends
	'(company-pseudo-tooltip-unless-just-one-frontend
	  company-preview-frontend
	  company-echo-metadata-frontend))
  (setq tab-always-indent nil)
  (defvar completion-at-point-functions-saved nil)
  :config
  (global-company-mode 1)
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  (define-key company-active-map (kbd "C-d") 'company-next-page)
  (define-key company-active-map (kbd "C-u") 'company-previous-page)
  (define-key company-search-map (kbd "C-n") 'company-select-next)
  (define-key company-search-map (kbd "C-p") 'company-select-previous)
  (define-key company-search-map (kbd "C-t") 'company-search-toggle-filtering)
  (define-key evil-insert-state-map (kbd "C-n") 'company-manual-begin)
  (defun company-indent-for-tab-command (&optional arg)
    (interactive "P")
    (let ((completion-at-point-functions-saved completion-at-point-functions)
	  (completion-at-point-functions '(company-complete-common-wrapper)))
      (indent-for-tab-command arg)))

  (defun company-complete-common-wrapper ()
    (let ((completion-at-point-functions completion-at-point-functions-saved))
      (company-complete-common))))

(use-package company-lsp
  :ensure t
  :init
  (push 'company-lsp company-backends))

;; Powerline
(use-package spaceline
  :ensure t
  :init
  (setq powerline-default-separator 'slant)
  :config
  (spaceline-emacs-theme)
  (spaceline-toggle-minor-modes-off)
  (spaceline-toggle-buffer-size-off)
  (spaceline-toggle-evil-state-on))

;;;;;;;;;;;;;;;;;;;;;;;
;; Language Supports ;;
;;;;;;;;;;;;;;;;;;;;;;;

;; JavaScript
(use-package js2-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))
(use-package tern :ensure t)

;; Rust
(use-package rust-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode)))

(use-package lua-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.lua\\'" . lua-mode)))

;; Flycheck
(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode))

(use-package flycheck-rust
  :ensure t
  :init
  (with-eval-after-load 'rust-mode
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))

(use-package flycheck-inline
  :ensure t
  :init
  (with-eval-after-load 'rust-mode
    (add-hook 'flycheck-mode-hook #'flycheck-inline-mode)))
;; Typescript
(use-package typescript-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode)))

(use-package cargo
  :hook (rust-mode . cargo-minor-mode))

;; LSP for JavaScript and TypeScript

;; Auto-generated
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (cmake-mode yaml-mode cargo helm-dash evil-magit magit enh-ruby-mode origami rvm doom-modeline lsp-javascript-typescript typescript-mode lsp-rust rust-mode tern js2-mode spaceline company-lsp company lsp-ui lsp-mode flycheck general which-key neotree helm-projectile projectile helm-rg helm doom-themes lua-mode anzu evil-escape evil use-package)))
 '(projectile-indexing-method (quote alien))
 '(projectile-mode t nil (projectile)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init)
;;; init.el ends here
