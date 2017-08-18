;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.3.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


(define (cond1 n)
  (cond
    [(<= n 1000) 0.40]
    [(<= n 5000) 0.45]
    [(<= n 10000) 0.55]
    [(>  n 10000) 0.60])
)



;; when n is 500
(= (cond1 500) 0.40)

;; when n is 2800
(= (cond1 2800) 0.45)

;; when n is 15000
(= (cond1 15000) 0.60)