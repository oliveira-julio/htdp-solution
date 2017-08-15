;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.1.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


(define a 4)
(define b 2)
(define c 7/2)


(define (one x)
  (> x 3)
)

(define (two x)
  (and (> 4 x) (one x))
)

(define (three x)
  (= (* x x) x)
)


;; Tests
(one   a) ;; true
(two   a) ;; false
(three a) ;; false

(one   b) ;; false
(two   b) ;; false
(three b) ;; false

(one   c) ;; true
(two   c) ;; true
(three c) ;; false