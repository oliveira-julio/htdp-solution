;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.4.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; (+ (10) 20)
;;1.
;; ERROR:
;;   function call: expected a function after the open parenthesis,
;;   but found a number.
;;
;; MEANING:
;;   racket expected a operation after the open parenthesis,
;;   so parenthesizing number is the mistake.


;; (10 + 20)
;;2.
;; ERROR:
;;   function call: expected a function after the open parenthesis,
;;   but found a number
;; MEANING:
;;   racket use prefix notation and expected a operation after the open parenthesis,
;;   10 is not a operation.


;; (+ +)
;;3.
;; ERROR:
;;   +: expected a function call, but there is no open parenthesis before this function
;; MEANING:
;;   racket expected a argument follow a operator, not a another operator.