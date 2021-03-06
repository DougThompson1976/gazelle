(eval-when (load compile eval)
  (push (file-truename ".") load-path))

(defun bc-load (file)
  (with-current-buffer (find-file-noselect (file-truename file))
	(emacs-lisp-byte-compile-and-load)))

(sh "rm *.elc")
(bc-load "gazelle-utils.el")
(bc-load "prim.el")
(bc-load "proper.el")
(bc-load "gazelle.el")


(setq max-lisp-eval-depth 10000)
(setq max-specpdl-size 100000)




