;;; ql-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ql" "ql.el" (0 0 0 0))
;;; Generated autoloads from ql.el

(autoload 'ql-play-pause "ql" "\
Toggle playing status.

\(fn)" t nil)

(autoload 'ql-pause "ql" "\
Pause the current song.

\(fn)" t nil)

(autoload 'ql-play "ql" "\
Begin playing.

\(fn)" t nil)

(autoload 'ql-next "ql" "\
Skip to the next track.

\(fn)" t nil)

(autoload 'ql-previous "ql" "\
Skip backwards to the previous track.

\(fn)" t nil)

(defvar ql-minor-mode t "\
Non-nil if Ql minor mode is enabled.
See the `ql-minor-mode' command
for a description of this minor mode.")

(custom-autoload 'ql-minor-mode "ql" nil)

(autoload 'ql-minor-mode "ql" "\
Minor mode for controlling Quod Libet

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ql" '("ql-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ql-autoloads.el ends here
