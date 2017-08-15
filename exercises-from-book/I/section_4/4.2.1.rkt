;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.2.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; (3,7]
(define (between-3-and-7-not-including-3 number)
  (and (< 3 number) (<= number 7))
)


;; [3,7]
(define (between-including-3-and-7 number)
  (and (<= 3 number) (<= number 7))
)


;; [3,9)
(define (between-3-and-9-not-including-9 number)
  (and (<= 3 number) (< number 9))
)


;; (1,3) U (9,11)
(define (between-not-including-1-and-3-or-9-and-11 number)
  (or (< 1 number 3)
      (< 9 number 11)
  )
)


;; )1,3(
(define (outside-between-not-including-1-3 number)
  (not (<= 1 number 3))
)


;; tests
(between-3-and-7-not-including-3 3) ;; false
(between-3-and-7-not-including-3 5) ;; true

(between-including-3-and-7 3) ;; true
(between-including-3-and-7 5) ;; true

(between-3-and-9-not-including-9 5) ;; true
(between-3-and-9-not-including-9 9) ;; false

(between-not-including-1-and-3-or-9-and-11 2 ) ;; true
(between-not-including-1-and-3-or-9-and-11 10) ;; true
(between-not-including-1-and-3-or-9-and-11 5 ) ;; false

(outside-between-not-including-1-3 2) ;; false 
(outside-between-not-including-1-3 5) ;; true