;;;-*-EMACS-LISP-*-

;;; pip install howdoi
(defun how-do-i (task count)
  (interactive "sTask: \np")
  (let ((language (replace-regexp-in-string "-mode" "" (symbol-name major-mode))))
    (shell-command (format "howdoi -n %d %s %s" count language task) t)))


(provide 'how-do-i)
