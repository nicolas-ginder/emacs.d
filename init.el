;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.


;(add-to-list 'default-frame-alist '(height . 100))
;(add-to-list 'default-frame-alist '(width . 150))

;(package-initialize)

(require 'package)

;; Load bindings config
;;(live-load-config-file "bindings.el")
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

;;(package-require 'color-theme-solarized)
(load-theme 'cyberpunk t)

;; helm
;(require 'helm)
;(require 'hellm-config)

;(global-set-key (kbd "C-c h") 'helm-command-prefix)
;(global-unset-key (kbd "C-x c"))

;(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
;(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
;(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

;(when (executable-find "curl")
;  (setq helm-google-suggest-use-curl-p t))

;(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
;      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
;      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
;      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
;      helm-ff-file-name-history-use-recentf t)

;(helm-mode 1)
;(helm-autoresize-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;;'(custom-safe-themes (quote ("f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" "fa942713c74b5ad27893e72ed8dccf791c9d39e5e7336e52d76e7125bfa51d4c" "293907f71094d7a1ecf5bcb366bf32c2af0df5f9f607ffb3cab14d1ae3a4262a" default)))
 '(helm-mode t)
 '(helm-autoresize-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
