;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3.6) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; fahrenheit->celsius : number -> number
;; converts fahrenheit to celsius, given the temperature is fahrenheit
;; Examples:
;; 104 degrees fahrenheit is 40  degrees celsius
;; -4  degrees fahrenheit is -20 degrees celsius
;; 32  degrees fahrenheit is 0   degrees celsius
(define (fahrenheit->celsius temperature-fahrenheit)
  (/ (- temperature-fahrenheit 32) 1.8))


;; celsius->fahrenheit: number -> number
;; converts celsius to fahrenheit, given the temperature in celsius
;; Examples:
;; the temperature is celsius is 40 , then the fahrenheit is 104
;; the temperature is celsius is -20, then the fahrenheit is -4
;; the temperature is celsius is 0  , then the fahrenheit is 32
(define (celsius->fahrenheit temperature-celsius)
  (+ 32 (* temperature-celsius 1.8))
)


;; I: number -> number
;; converts a number in fahrenheit to celsius and soon after converts back to fahrenheit,
;; given the number in fahrenheit
(define (I number)
  (celsius->fahrenheit (fahrenheit->celsius number))
)


;; Tests
(fahrenheit->celsius 104)"should be" 40
(fahrenheit->celsius -4) "should be" -20
(fahrenheit->celsius 32) "should be" 0

(celsius->fahrenheit 40 ) "should be" 104
(celsius->fahrenheit -20) "should be" -4
(celsius->fahrenheit 0  ) "should be" 32

(I 104) "should be" 104
(I -4 ) "should be" -4
(I 32 ) "should be" 32

;; the composition of the two functions produces a identity function,
;; that is, one is the inverse function of the other.