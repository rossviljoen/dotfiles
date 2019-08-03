(server-mode)
(add-to-list 'load-path "~/.emacs.d/lisp")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("527df6ab42b54d2e5f4eec8b091bd79b2fa9a1da38f5addd297d1c91aa19b616" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq straight-use-package-by-default t)

;; Bootstrap straight
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

(use-package better-defaults)
(use-package smex)
(use-package pdf-tools)
(use-package auctex
  :defer t
  :config
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "PDF Tools")
     (output-html "xdg-open"))))
  (setq-default TeX-master nil)
   ;; revert pdf-view after compilation TODO: I don't think this works
  (add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer))
(use-package transpose-frame)
(use-package smooth-scrolling)
(use-package frames-only-mode)
(use-package nix-mode)
(use-package haskell-mode)
(use-package sudo-edit)
(use-package base16-theme :config (load-theme 'base16-nord))
(use-package visual-fill-column)
(use-package speed-type)
(use-package counsel
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (global-set-key (kbd "C-s") 'swiper)
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (global-set-key (kbd "<f1> f") 'counsel-describe-function)
  (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
  (global-set-key (kbd "<f1> l") 'counsel-find-library)
  (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
  (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
  (global-set-key (kbd "C-c c") 'counsel-compile)
  (global-set-key (kbd "C-c g") 'counsel-git)
  (global-set-key (kbd "C-c j") 'counsel-git-grep)
  (global-set-key (kbd "C-c k") 'counsel-ag)
  (global-set-key (kbd "C-x l") 'counsel-locate)
  (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
  )

(require 'org-protocol)
(require 'dired-x)

;; Miscellaneous emacs configuration
(setq auto-save-file-name-transforms
          `((".*" ,(concat user-emacs-directory "auto-saves/") t)))
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))
(setq dired-dwim-target t)
(global-display-line-numbers-mode 1)
(smooth-scrolling-mode t)
(auto-fill-mode t)
(setq display-line-numbers-type 'relative)

;; Org mode configuration
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(setq org-startup-indented t)
(setq org-directory "~/org/")
(setq org-lists-file (concat org-directory "lists.org"))

(setq org-refile-use-outline-path t)
(setq org-outline-path-complete-in-steps nil)
(setq org-refile-allow-creating-parent-nodes 'confirm)
(defun ross/verify-refile-target ()
  ;; Make sure refile target has a child
  (save-excursion (org-goto-first-child))
  )
(setq org-refile-target-verify-function 'ross/verify-refile-target)

;; Org-board and capture setup
(setq org-protocol-default-template-key "b")
(setq org-default-notes-file "~/org/gtd/inbox.org")
(setq org-capture-templates
      '(("i" "inbox" entry (file org-default-notes-file)
         "* %?\n")
        ("p" "org-protocol bookmark" entry
         (file+olp org-lists-file "Reading" "Web" "Unsorted")
         "* [[:link][%:description%?]]")
        ))

;; Org-refile stuff
(setq org-refile-targets '((org-lists-file :maxlevel . 3)
                           ("tasks.org" :level . 2)
                           ("someday.org" :level . 1)
                           ))

;; Soft word wrap
(add-hook 'visual-line-mode-hook #'visual-fill-column-mode)
(add-hook 'text-mode-hook #'visual-line-mode)

;; TODO: use advice/some other method?
;; Treat [] as an indentation level in TeX mode
(defun TeX-brace-count-line ()
  "Count number of open/closed braces."
  (save-excursion
    (let ((count 0) (limit (line-end-position)) char)
      (while (progn
               (skip-chars-forward "^{}[]\\\\" limit)
               (when (and (< (point) limit) (not (TeX-in-comment)))
                 (setq char (char-after))
                 (forward-char)
                 (cond ((eq char ?\{)
                        (setq count (+ count TeX-brace-indent-level)))
                       ((eq char ?\})
                        (setq count (- count TeX-brace-indent-level)))
                       ((eq char ?\[)
                        (setq count (+ count TeX-brace-indent-level)))
                       ((eq char ?\])
                        (setq count (- count TeX-brace-indent-level)))
                       ((eq char ?\\)
                        (when (< (point) limit)
                          (forward-char)
                          t))))))
      count)))
