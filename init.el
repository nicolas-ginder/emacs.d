
;(add-to-list 'default-frame-alist '(height . 100))
;(add-to-list 'default-frame-alist '(width . 150))

(require 'package)
;; packages
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)
;(package-refresh-contents)

(defun package-require (pkg)
  "Install a package only if it's not already installed."
  (when (not (package-installed-p pkg))
    (package-install pkg)))


(package-require 'helm)
(package-require 'helm-swoop)
(package-require 'cyberpunk-theme)
(package-require 'dired+)
(package-require 'js2-mode)
(package-require 'restclient)
(package-require 'rainbow-delimiters)

(tool-bar-mode -1)
(load-theme 'cyberpunk t)

;; javascript
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Backup files to temp
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


(add-hook 'js2-mode-hook 'rainbow-delimiters-mode)

(setq inferior-lisp-program "/opt/sbcl/bin/sbcl")
(setq slime-contribs '(slime-fancy))

;; helm
(require 'helm)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(helm-mode t)
(helm-autoresize-mode t)
