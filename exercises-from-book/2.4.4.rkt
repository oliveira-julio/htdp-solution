;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.4.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (somef x)
  (sin x x))

;; (somef 10 20)
;;1.
;; ERROR:
;;  somef: expects only 1 argument, but found 2
;; MEANING:
;;  somef receives more arguments than it is designed to receive
;;  Nothing happens to the sin, no error.

;; (somef 10)
;;2.
;; ERROR:
;;  Somef receives the correct amount of arguments that it is designed to receive,
;;  but sin receives more arguments than it is designed to receive