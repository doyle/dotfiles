(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/emacs-nav-49")
;(add-to-list 'load-path "~/.emacs.d/color-theme")

;; load the color theme
;(require 'color-theme)
;(require 'color-theme-solarized)
;(color-theme-solarized-dark)

;; color the current line
(global-hl-line-mode 1)
;; good for light terminals
;;(set-face-background 'hl-line "color-253")
;; good for dark terminals
;(set-face-background 'hl-line "color-17")
(set-face-background 'hl-line "color-233")

;; turn on line numbers
(global-linum-mode t)

;; color lines that go over 80 chars
(require 'whitespace)
(global-whitespace-mode t)
(setq whitespace-style 
   '(face lines-tail))

;; fuzzy search
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; ack
;(require 'ack)
;(setq ack-command "ack")

;; nav
(require 'nav)
(nav-disable-overeager-window-splitting)
(global-set-key [f8] 'nav-toggle)

;; show the partial path for duplicate files instead of <2>
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; keyboard shortcuts
(global-set-key (kbd "C-x C-g") 'rgrep)
(global-set-key (kbd "C-x l") 'goto-line)
(global-set-key (kbd "M-n") 'down-line)
(global-set-key (kbd "M-p") 'up-line)
(global-set-key (kbd "<down>") 'down-line)
(global-set-key (kbd "<up>") 'up-line)


(defun down-line ()
  "Moves the cursor and screen down a line."
  (interactive)
  (next-line)(scroll-up-line))

(defun up-line ()
  "Moves the cursor and screen up a line."
  (interactive)
  (previous-line)(scroll-down-line))

;; don't use tabs
(setq-default indent-tabs-mode nil)

;; don't add encoding junk to rb files
(setq ruby-insert-encoding-magic-comment nil)
