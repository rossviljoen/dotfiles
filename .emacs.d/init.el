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
(use-package pdf-tools
  :config
  (pdf-tools-install))
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
(use-package haskell-mode
  :config
  (add-hook 'haskell-mode-hook 'interactive-haskell-mode))
(use-package sudo-edit)
(use-package base16-theme :config (load-theme 'base16-nord))
(use-package visual-fill-column)
(use-package speed-type)
(use-package counsel
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  :bind
  (("C-s" . swiper)
   ("M-x" . counsel-M-x)
   ("C-x C-f" . counsel-find-file)
   ("C-x C-d" . counsel-dired)
   ("C-x d" . counsel-dired)
   ("<f1> f" . counsel-describe-function)
   ("<f1> v" . counsel-describe-variable)
   ("<f1> l" . counsel-find-library)
   ("<f2> i" . counsel-info-lookup-symbol)
   ("<f2> u" . counsel-unicode-char)
   ("C-c c" . counsel-compile)
   ("C-c g" . counsel-git)
   ("C-c j" . counsel-git-grep)
   ("C-c k" . counsel-ag)
   ("C-x l" . counsel-locate)
   ("C-S-o" . counsel-rhythmbox)))
(use-package magit
  :bind
  (("C-x g" . magit-status)))
(use-package flycheck)
(use-package elpy
  :init
  (elpy-enable))

(require 'org-protocol)
(require 'dired-x)

;; Miscellaneous emacs configuration
(setq auto-save-file-name-transforms
          `((".*" ,(concat user-emacs-directory "auto-saves/") t)))
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))
(setq dired-dwim-target t)
(smooth-scrolling-mode t)

;; Ibuffer configuration
(setq ibuffer-show-empty-filter-groups nil)
(setq ibuffer-saved-filter-groups
      '(("Home"
         ("Dired" (mode . dired-mode))
         ("Org" (or (name . "^.*org$")
                    (mode . org-mode)))
         ("Shell" (or (mode . eshell-mode) (mode . shell-mode)))
         ("Emacs" (or
                   (name . "^\\*scratch\\*$")
                   (name
                    . "^\\*Messages\\*$")))
         ("Magit" (or (name . "^magit*") (mode . magit-mode)))
         ("Help" (or (name . "\*Help\*")
		     (name . "\*Apropos\*")
		     (name . "\*info\*")))
         )))
(add-hook 'ibuffer-mode-hook
	  '(lambda ()
             (ibuffer-auto-mode 1)
	     (ibuffer-switch-to-saved-filter-groups "Home")))


;; Org mode configuration
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(setq org-tags-column -66)
(setq org-startup-indented t)
(setq org-directory "~/org/")
(setq org-default-notes-file (concat org-directory "gtd/inbox.org"))
(setq ross/org-tasks-file (concat org-directory "gtd/tasks.org"))
(setq ross/org-someday-file (concat org-directory "gtd/someday.org"))
(setq ross/org-lists-file (concat org-directory "lists.org"))

(setq org-todo-keywords '((sequence "TODO" "WAITING" "|"
                                    "DONE")))

;; Only use headlines with at least one child
(defun ross/verify-refile-target ()
  (save-excursion (org-goto-first-child))
  )
;; (setq org-refile-target-verify-function 'ross/verify-refile-target)

;; Org capture and protocol setup
(setq org-protocol-default-template-key "b")
(global-set-key (kbd "C-c i") (lambda () (interactive) (find-file
                                                        org-default-notes-file)))
(global-set-key (kbd "C-c t") (lambda () (interactive) (find-file
                                                        ross/org-tasks-file)))
(setq org-capture-templates
      '(("i" "inbox" entry (file org-default-notes-file)
         "* %?\n")
        ("p" "org-protocol bookmark" entry
         (file org-default-notes-file)
         "* [[%:link][%:description%?]]")
        ))

;; Org-refile stuff
(setq org-refile-targets '((ross/org-lists-file :maxlevel . 3)
                           (ross/org-tasks-file :level . 1)
                           (ross/org-someday-file :level . 1)
                           ))
(setq org-refile-use-outline-path t)
(setq org-outline-path-complete-in-steps nil)
(setq org-refile-allow-creating-parent-nodes 'confirm)

;; Org-agenda settings
(setq org-agenda-block-separator nil)
(setq org-agenda-start-with-log-mode t)

;; (todo "TODO"
;; ((org-agenda-overriding-header "One-off Tasks")
;;  (org-agenda-files 'ross/org-tasks-file)
;;  (org-agenda-skip-function '(org-agenda-skip-entry-if 'deadline 'scheduled))))

(setq org-agenda-custom-commands
      '(("r" "Agenda"
         ((agenda ""
                  ((org-agenda-span 'day)
                   (org-deadline-warning-days 365)))
          (search "*"
                  ((org-agenda-overriding-header "To Refile")
                       (org-agenda-files `(,org-default-notes-file))))
          (todo "TODO"
                ((org-agenda-overriding-header "Projects")
                 (org-agenda-files `(,ross/org-tasks-file))
                 ;; (org-agenda-skip-function #'jethro/org-agenda-skip-all-siblings-but-first)
                 ))
          ))))

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

;; Load host-specific config
(defvar host (substring (shell-command-to-string "hostname") 0 -1))
(load (concat "~/.emacs.d/hosts/" host))
