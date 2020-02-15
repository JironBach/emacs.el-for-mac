;;; emacs -q -lした時に、user-emacs-directoryが変わるように
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;ロードパス追加設定;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(add-to-list 'load-path (locate-user-emacs-file "./"))
(add-to-list 'load-path (locate-user-emacs-file "elisp/"))
(add-to-list 'load-path (locate-user-emacs-file "elisp/el-get/el-get/"))
(add-to-list 'load-path (locate-user-emacs-file "elisp/mode/"))
(add-to-list 'load-path (locate-user-emacs-file "elisp/mode/jshint-mode/"))
(add-to-list 'load-path (expand-file-name "~/Dropbox/config-file/.emacs.d/elisp/"))

(add-to-list 'custom-theme-load-path (locate-user-emacs-file "elisp/themes/"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; ELPA 設定 ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)

(setq package-user-dir (locate-user-emacs-file "elisp/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;   init-loader   ;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ~/.emacs.d/site-lisp 以下全部読み込み
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

;;設定ファイルはinits以下に置いていて、init-loaderによって読み込まれる
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/site-lisp/inits")
(init-loader-load "~/Dropbox/config-file/.emacs.d/inits")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-safe-themes
   (quote
    ("7aaee3a00f6eb16836f5b28bdccde9e1079654060d26ce4b8f49b56689c51904" "ec0c9d1715065a594af90e19e596e737c7b2cdaa18eb1b71baf7ef696adbefb0" "f07583bdbcca020adecb151868c33820dfe3ad5076ca96f6d51b1da3f0db7105" "11e57648ab04915568e558b77541d0e94e69d09c9c54c06075938b6abc0189d8" "2c73700ef9c2c3aacaf4b65a7751b8627b95a1fd8cebed8aa199f2afb089a85f" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(fci-rule-color "#383838")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (ql flow-minor-mode ensime lua-mode gotest ruby-block rsense rfringe redo+ point-undo plenv mmm-mode migemo log4e lispxmp less-css-mode json-mode jedi jaunte init-loader htmlize highlight-symbol helm-perldoc helm-open-github helm-etags-plus helm-c-yasnippet helm-c-moccur helm-ack guide-key grep-a-lot goto-last-change go-eldoc go-autocomplete gitignore-mode gitconfig-mode git-gutter-fringe gist free-keys foreign-regexp fold-dwim flymake-jslint elscreen eldoc-extension edit-server edit-list direx dash-at-point cperl-mode command-log-mode col-highlight coffee-mode codic auto-virtualenvwrapper auto-install auto-complete-c-headers auto-compile auto-async-byte-compile anzu anything-exuberant-ctags all-ext ack ac-octave ac-ispell)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cperl-array-face ((t (:foreground "yellow" :weight bold))))
 '(cperl-hash-face ((t (:foreground "Red" :weight bold))))
 '(ensime-errline-highlight ((t (:inherit flycheck-error))))
 '(ensime-warnline-highlight ((t (:inherit flycheck-warning)))))


 ;; 'install-elisp' コマンドを使えるように設定
 (require 'install-elisp)
 ;; install-elispコマンドを使ったファイルのインストール先の設定
 (setq install-elisp-repository-directory "~/.emacs.d/site-lisp/")

;; JironBachの個人的設定、主にslime
(setq desktop-restore-frames 1)
;; https://qiita.com/tadsan/items/4ad2e5e3114fff172b6a
;; ファイル編集時に，bufferを再読込
(global-auto-revert-mode 1)
;; active window move
(global-set-key (kbd "<C-s-left>")  'windmove-left)
(global-set-key (kbd "<C-s-down>")  'windmove-down)
(global-set-key (kbd "<C-s-up>")    'windmove-up)
(global-set-key (kbd "<C-s-right>") 'windmove-right)
;; https://qiita.com/tadsan/items/4ad2e5e3114fff172b6a
;; 新規ファイル作成
(load "newfile")
;; 見た目の設定
(load "set-display")
;; 起動はクールに
(load "set-startup")
;; TabやSidebarのカスタム
(load "set-tabs")
;; 操作性の向上
(load "set-usability")
;; ウィンドウ操作
(load "set-windows-usability")
;; 検索性の向上
(load "set-search")
;; ショートカット
(load "set-shortcut")
;; Git
;; git-gutter-fringe
;(global-git-gutter-mode 1)
;; magit
(global-set-key (kbd "<C-c C-g>") 'magit-diff-working-tree)
;; ファイル編集時に，bufferを再読込
(global-auto-revert-mode 1)
;; ターミナル
;; eshell + shell-pop
(setq shell-pop-shell-type '("eshell" "*eshell*" (lambda () (eshell))))
(global-set-key (kbd "<C-c o>") 'shell-pop)
;; テーマ
(load-theme 'zenburn t)
;; slime
(load "slime-init")

(desktop-save-mode 1)
