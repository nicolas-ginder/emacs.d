
;(add-to-list 'default-frame-alist '(height . 100))
;(add-to-list 'default-frame-alist '(width . 150))

(require 'package)

;; packages
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)


(defun package-require (pkg)
  "Install a package only if it's not already installed."
  (when (not (package-installed-p pkg))
    (package-install pkg)))


(package-require 'helm)
(package-require 'helm-swoop)
(package-require 'cyberpunk-theme)
(package-require 'dired+)


(load-theme 'cyberpunk t)
(helm-mode t)
(helm-autoresize-mode t)

