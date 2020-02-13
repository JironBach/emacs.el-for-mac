;; https://qiita.com/tadsan/items/4ad2e5e3114fff172b6a
;; 新規ファイル作成
(require 'newfile)
;; 見た目の設定
(require 'set-display)
;; 起動はクールに
(require 'set-startup)
;; TabやSidebarのカスタム
;(require 'set-tabs)
;; 操作性の向上
(require 'set-usability)
;; ウィンドウ操作
(require 'set-windows-usability)
;; 検索性の向上
(require 'set-search)
;; ショートカット
(require 'set-shortcut)
;; Git
;; git-gutter-fringe
;(global-git-gutter-mode 1)
;; magit
(global-set-key (kbd "C-c C-g") 'magit-diff-working-tree)
;; ファイル編集時に，bufferを再読込
(global-auto-revert-mode 1)
;; ターミナル
;; eshell + shell-pop
(setq shell-pop-shell-type '("eshell" "*eshell*" (lambda () (eshell))))
(global-set-key (kbd "C-c o") 'shell-pop)
;; テーマ
;(load-theme 'zenburn t)
;; slime
(require 'slime-init)
