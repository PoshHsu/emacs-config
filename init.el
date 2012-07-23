(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(starter-kit starter-kit-eshell starter-kit-bindings)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)

;;(setq stack-trace-on-error t)
;;(add-to-list 'load-path "~/.emacs.d/ecb")
;;(require 'ecb)
;;(ecb-activate)
;;(ecb-byte-compile)

(load-theme 'deeper-blue)

(load-file "~/.emacs.d/taglist.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(jabber-account-list (quote (("poshenghsu@gmail.com" (:network-server . "talk.google.com") (:port . 5223) (:connection-type . ssl)) ("poshenghsu@chat.facebook.com" (:network-server . "chat.facebook.com") (:port . 5222) (:connection-type . starttls))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
