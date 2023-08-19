#lang racket

(require odysseus)
; (require odysseus/csv)
(require tabtree)
(require tabtree/serialize)

(define people (parse-tabtree "/home/denis/denis_personal/my_knowledge/people.tree"))
; (define people (parse-tabtree "people_test.tree"))

(--- (length (hash-keys people)))

(write-file "people.csv" (make-csv people))
