
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(display-time-mode t)
 '(org-agenda-files nil)
 '(package-selected-packages (quote (smex markdown-mode+)))
 '(text-mode-hook (quote (text-mode-hook-identify))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight bold :height 160 :width normal)))))

;;customise emacs for own use
(setq-default truncate-lines t)
(setq org-startup-truncated nil)
(desktop-save-mode 1)
(setq desktop-restore-eager 50)
;;(set-default-font "-apple-Consolas-medium-normal-normal-*-35-*-*-*-m-0-iso10646-1")
(set-default-font "-outline-Courier New-bold-normal-normal-mono-35-*-*-*-c-*-iso8859-1")
(setq column-number-mode t)
(setq line-number-mode t)
(setq global-visual-line-mode t)
(setq default-frame-alist '((width . 100)(height . 30)))

(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq buffer-file-coding-system 'utf-8)

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)
;;package install 
;;(load-file  "~/.emacs.d/site-lisp/sr-speedbar.el")
;;(require 'sr-speedbar)
;;(global-set-key [(f4)] 'sr-speedbar-toggle)
;;(setq speedbar-show-unknown-files t)
;;(setq sr-speedbar-right-side nil)

;;(add-to-list 'load-path "~/.emacs.d/site-lisp/cedet-1.0pre6/common")
;;(add-to-list 'load-path "~/.emacs.d/site-lisp/cedet-1.0pre6/semantic")
;;(require 'cedet)
;;(add-to-list 'load-path "~/.emacs.d/site-lisp/ecb-2.40")
;;(require 'ecb)

;;not show start up image
(setq inhibit-startup-message t)

(setq default-directory "C:/Users/arthurp")

;;ispell setup
(setq-default ispell-program-name "aspell")
(setq-default ispell-local-dictionary "american")
;;(global-set-key (kbd "") 'ispell-complete-word)

;;graphviz setup

;;set org mode export
(setq org-export-html-postamble nil)
(setq org-startup-truncated nil)
(setq org-export-creator-info nil)
(setq org-export-author "arthur")
(setq org-export-email "pengss1026@gmail.com")

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-agenda-files (list "C:/work/personal.org" "C:/work/source/git/task/task.org"))

;;calendar setting
(setq holiday-local-holidays '((holiday-fixed 1 1   "元旦")  
                        (holiday-fixed 5 1   "劳动节")  
                        (holiday-fixed 10 1  "国庆节")  
                        (holiday-chinese 1 15  "元宵节 (正月十五)")  
                        (holiday-chinese 5 5   "端午节 (五月初五)")  
                        (holiday-chinese 9 9   "重阳节 (九月初九)")  
                        (holiday-chinese 8 15  "中秋节 (八月十五)")  
                        ))
(setq holiday-other-holidays '((holiday-fixed 10 26   "My birthday")  
                        (holiday-chinese 10 03   "My chinese birthday")  
                        (holiday-chinese 09 28   "My wife's birthday")  
                        (holiday-fixed 06 26  "Mother's birthday")  
                        (holiday-chinese 02 21   "Father's birthday")  
                        (holiday-chinese 01 14   "Father in law's birthday")  
                        (holiday-chinese 11 29   "Mother in law's birthday")  
                        (holiday-chinese 02 29   "Grandpa's birthday")  
                        (holiday-chinese 08 11   "Grandma's birthday")  
                               ))
(setq mark-diary-entries-in-calendar t)
(setq calendar-latitude +31)  
(setq calendar-longitude +120)  
(setq calendar-location-name "Shanghai") 

(setq diary-file "C:/Seafile/work/personal/diary")

;;apointment setting
(appt-activate 1)
(setq appt-message-warning-time 15)
(setq appt-display-interval 5)

;;smex
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;switch-window
(global-set-key (kbd "C-x o") 'switch-window)

