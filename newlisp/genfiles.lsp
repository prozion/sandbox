#!/usr/bin/newlisp

(setq filename ((main-args) 2))

(setq base-filename ((parse filename ".") 0))

(make-dir base-filename 0750)
(change-dir base-filename)
(dolist (ext '("exe" "dll" "ico"))
  (write-file (string base-filename "." ext) ""))

(exit)
