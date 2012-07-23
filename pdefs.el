;;; pdefs
(defun php-defs ()
  (interactive)
  (let ((obuf (current-buffer)))
    (setq buf (get-buffer-create "*pdefs*"))
    (set-buffer buf)
    (erase-buffer)
    (set-buffer obuf)
    (call-process-region
     (point-min)
     (point-max) "/path/to/pdefs" nil buf)
    (switch-to-buffer-other-window buf)
    (php-mode)))
