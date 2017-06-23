;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.2.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; fahrenheit->celsius : number -> number

;; EXAMPLES
;; 104 degrees fahrenheit is 40 degrees celsius
;; -4  degrees fahrenheit is -20 degrees celsius
;; 32  degrees fahrenheit is 0 degrees celsius

(define (fahrenheit->celsius temperature-fahrenheit)
  (/ (- temperature-fahrenheit 32) 1.8))

;; EXAMPLES TURNED INTO TESTS
(fahrenheit->celsius 104)"should be" 40
(fahrenheit->celsius -4) "should be" -20
(fahrenheit->celsius 32) "should be" 0