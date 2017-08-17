;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.2.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; fahrenheit->celsius : number -> number

;; EXAMPLES
;; 104 degrees fahrenheit is 40 degrees celsius
;; -4  degrees fahrenheit is -20 degrees celsius
;; 32  degrees fahrenheit is 0 degrees celsius

(define (fahrenheit->celsius temperature-fahrenheit)
  (/ (- temperature-fahrenheit 32) 1.8))

;; EXAMPLES TURNED INTO TESTS
(= (fahrenheit->celsius 104) 40)
(= (fahrenheit->celsius -4) -20)
(= (fahrenheit->celsius 32) 0)


;; dollar->euro : number -> number
;; conversion rate, from dollar to euro.

;; EXAMPLES
;; 200 USD is 178.96 EUR
;; 50 USD is 44.74 EUR
;; 25 USD is 22.37 EUR



(define (dollar->euro value-dollar)
  (* value-dollar 0.8948))

;; EXAMPLES TUNED INTO TESTS
(= (dollar->euro 200) 178.96)
(= (dollar->euro 50) 44.74)
(= (dollar->euro 25) 22.37)


;; area-of-triangle : number number -> number 
;; calculates the area of a triangle, given its base and height.

;; EXAMPLES
;; base is 2  and height is 2, then area-of-triangle is 2
;; base is 10 and height is 5, then area-of-triangle is 25
;; base is 7  and height is 9, then area-of-triangle is 31.5

(define (area-of-triangle length height)
  (/ (* length height) 2))

;; EXAMPLES TUNED INTO TEST
(= (area-of-triangle 2  2) 2)
(= (area-of-triangle 10 5) 25)
(= (area-of-triangle 7  9) 31.5)


;; convert3 : number number number -> number
;; reverse digits of a number with 3 digits

;; EXAMPLES
;; original number is 123, the reverse is 321
;; original number is 122, the reverse is 221
;; original number is 111, the reverse is 111

(define (convert3 ones tens hundreds)
  (+ (* hundreds 100)
     (* tens 10)
     ones
  )
)

;; EXAMPLES TESTS
(= (convert3 1 2 3) 321)
(= (convert3 1 2 2) 221)
(= (convert3 1 1 1) 111)