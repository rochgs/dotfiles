;; Globally changes the default font:
(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))

;; Disabling the ugly bars:
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Desactiva el buffer de bienvenida *GNU Emacs*
(setq inhibit-startup-message t)

;; MacOS X specific stuff
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; Backup file stuff:
(setq backup-directory-alist `(("." . "~/.emacs_bcks")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 2
      kept-old-versions 2
      version-control t)

;; Enable ido everywhere:
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Two spaces indent is enough:
(setq js-indent-level 2)

;; A more conventional indentation of continuation lines in Ruby:
(setq ruby-deep-indent-paren nil)

;; newline-and-indent when RET for most modes:
(global-set-key (kbd "RET") 'newline-and-indent)
;; newline-and-indent when RET for ruby-mode:
(add-hook 'ruby-mode-hook (lambda ()
                            (local-set-key "\r"'newline-and-indent)))

;; Indent whole buffe
(defun indent-whole-buffer ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))
(global-set-key (kbd "C-c n") 'indent-whole-buffer)

;; Usar buffer-menu en lugar de buffer-list
(global-set-key "\C-x\C-b" 'buffer-menu)

;; Init el-get or install it if no present
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (goto-char (point-max))
     (eval-print-last-sexp))))

(el-get 'sync)

;; Load rhtml-mode for .rhtml and .erb files
(setq auto-mode-alist  (cons '("\\.rhtml$" . rhtml-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("\\.erb$" . rhtml-mode) auto-mode-alist))

;; Load ruby-mode for Rakefiles and Gemfiles
(setq auto-mode-alist  (cons '("Rakefile" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("Gemfile" . ruby-mode) auto-mode-alist))

;; Load ruby-mode and rinari-minor-mode
(setq auto-mode-alist  (cons '("\\.rake$" . rinari-minor-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("\\.rake$" . ruby-mode) auto-mode-alist))

;; Enabling color theme if window system
(if window-system
    (color-theme-railscasts))
(put 'scroll-left 'disabled nil)
