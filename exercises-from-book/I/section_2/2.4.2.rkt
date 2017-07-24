;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.4.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))



;;(define (f 1)
;;  (+ x 10))
;;1.
;;  ERROR:
;;    define: expected a variable, but found a number
;;  MEANING:
;;    racket expected a variable as argument after the function name and not a number.
;;  CORRETING:
(define (f x)
  (+ x 10))



;;(define (g x)
;;  + x 10)
;;2.
;;  ERROR:
;;    define: expected only one expression for the function body, but found 2 extra parts
;;  MEANING:
;;    racket expected only one expression follow the name of function and arguments.
;;  CORRETING:
(define (g x)
  (+ x 10))




;;(define h(x) 
;;  (+ x 10))
;;3.
;;  ERROR:
;;    define: expected only one expression after the variable name h, but found 1 extra part
;;  MEANING:
;;    first variable following the operator define is the name of function, followed by arguments,
;;    and after followed by only one expression.
(define (h x) 
  (+ x 10))



