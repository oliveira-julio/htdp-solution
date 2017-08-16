;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.2.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; in-interval-1?: number -> boolean
;; determines if a number it's in the interval (-3,0)
;; Examples:
;; -2, -1, -1/2 are in the interval
;; -3, 0, 3 not are in the interval
(define (in-interval-1? x)
  (and (< -3 x) (< x 0))
)


;; in-interval-2?: number -> boolean
;; determines if a number it's in the interval )1,2(
;; Examples:
;; -2, -1, 3 are in the interval
;; 1, 3/2, 2 not are in the interval
(define (in-interval-2? x)
  (or (< x 1) (> x 2))
)


;; in-interval-3?: number -> boolean
;; determines if an number it's in the interval )1,5(
;; Examples:
;; -2, -1, 6 are in the interval
;; 1, 3, 5 not are in the interval
(define (in-interval-3? x)
  (not (and (<= 1 x) (<= x 5)))
)



;; tests:
(in-interval-1? -2) ;; true
(in-interval-2? -2) ;; true
(in-interval-3? -2) ;; true