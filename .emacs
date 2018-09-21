(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(display-time-mode t)
 '(text-mode-hook (quote (text-mode-hook-identify))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Cambria" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))

;;customise emacs for own use
(setq-default truncate-lines t)
(setq org-startup-truncated nil)
(desktop-save-mode 1)
(setq desktop-restore-eager 50)
(set-default-font "-apple-Consolas-medium-normal-normal-*-16-*-*-*-m-0-iso10646-1")
(setq column-number-mode t)
(setq line-number-mode t)
(setq default-frame-alist '((width . 100)(height . 30)))

(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq buffer-file-coding-system 'utf-8)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
;;package install 
;;expand-region smex w3m switch-window
(require 'color-theme)
(color-theme-initialize)
;;(color-theme-classic)
;;(color-theme-jsc-dark)
;;(color-theme-clarity)
;;(color-theme-comidia)
(color-theme-dark-blue)
;;(load-file  "~/.emacs.d/site-lisp/sr-speedbar.el")
;;(require 'sr-speedbar)
(global-set-key [(f4)] 'sr-speedbar-toggle)
(setq speedbar-show-unknown-files t)
(setq sr-speedbar-right-side nil)

;;(add-to-list 'load-path "~/.emacs.d/site-lisp/cedet-1.0pre6/common")
;;(add-to-list 'load-path "~/.emacs.d/site-lisp/cedet-1.0pre6/semantic")
;;(require 'cedet)
;;(add-to-list 'load-path "~/.emacs.d/site-lisp/ecb-2.40")
;;(require 'ecb)

;;not show start up image
(setq inhibit-startup-message t)

(setq default-directory "C:/Users/apeng1/")

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

(setq org-agenda-files (list "C:/Seafile/work/personal/personal.org" "C:/Seafile/work/cloverleaf/plan/cloverleaf.org"))

;;calendar setting
(setq holiday-hebrew-holidays nil  
      holiday-islamic-holidays nil  
      holiday-bahai-holidays nil  
      )
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
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;switch-window
(global-set-key (kbd "C-x o") 'switch-window)

;;org-redmine setting
;; Target Redmine URI
;;   eg. Redmine Project
(setq org-redmine-uri "http://10.86.52.72/redmine/")
;;   eg. Ruby Project
;;(setq org-redmine-uri "http://redmine.ruby-lang.org")

(setq org-redmine-auth-api-key "7ea1a392c07bd7f27fc72c7e89174122ee90c102") ;; nil default

;; default template
;; (defvar org-redmine-template-header "#%i% %s% :%t_n%:")
;; (defvar org-redmine-template-property nil)

;; * [#333] Subject :Tag:

(setq org-redmine-template-header "[%p_n%] #%i% %s% by %as_n%")
(setq org-redmine-template-property
      '(("assigned_to" . "%as_n%")
        ("version" . "%v_n%")))

;; * [ProjectName] #333 Subject by gongo
;;   :PROPERTIES:
;;   :assigned_to:  dududu
;;   :version: 1.2
;;   :END:

(setq org-redmine-template-header "[#%i%] %s%")
(setq org-redmine-template-property
      '(("project_name" . "%as_n%")))

;; * [#333] Subject
;;   :PROPERTIES:
;;   :project_name:  ProjectName
;;   :END:
;;org-redmine setting end