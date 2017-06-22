;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.2.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; dollar->euro : number -> number

;;EXAMPLES
;; 200 USD is 178.96 EUR
;; 50 USD is 44.74 EUR
;; 25 USD is 22.37 EUR



(define (dollar->euro value-dollar)
  (* value-dollar 0.8948))

;;EXAMPLES TUNED INTO TESTS
(dollar->euro 200) "should be" 178.96
(dollar->euro 50) "should be" 44.74
(dollar->euro 25) "should be" 22.37
