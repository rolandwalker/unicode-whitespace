
;;; requires and setup

(when load-file-name
  (setq pcache-directory (expand-file-name "test_output/" (file-name-directory load-file-name)))
  (setq package-enable-at-startup nil)
  (setq package-load-list '((pcache t)
                            (list-utils t)
                            (persistent-soft t)
                            (ucs-utils t)))
  (when (fboundp 'package-initialize)
    (package-initialize)))

(require 'list-utils)
(require 'persistent-soft)
(require 'ucs-utils)
(require 'unicode-whitespace)

;;; this is a stub - no tests defined

;;; unicode-whitespace-echo ()

;;; unicode-whitespace-hook-func ()

;;; unicode-whitespace-recognize-extended-characters ()

;;; unicode-whitespace-display-extended-characters ()

;;; unicode-whitespace-configure-styles ()

;;; unicode-whitespace-subdued-faces (&optional arg)

;;; unicode-whitespace-setup (&optional subdued-faces)

;;; unicode-whitespace-toggle-echo ()

;;; unicode-whitespace-toggle-newlines ()


;;
;; Emacs
;;
;; Local Variables:
;; indent-tabs-mode: nil
;; mangle-whitespace: t
;; require-final-newline: t
;; coding: utf-8
;; byte-compile-warnings: (not cl-functions)
;; End:
;;

;;; unicode-whitespace-test.el ends here
