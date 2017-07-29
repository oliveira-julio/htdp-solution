;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Problem 1:
;; When cooking for large groups of people even small amounts of ingredients listed in a recipe can become considerable quantities.
;; Develop a series of functions to convert between the given English liquid measuring units, then compose them to develop a function,
;; Tbsp->Barrels. Here are some useful facts: 16 Tbsp = 1 Cup; 16 Cup = 1 Gal; 42 Gal = 1 Barrel.


;; Tbsp->Cup: number -> number
;; converts tablespoon to Cup, given the value in tablespoon
;; Examples:
;; the tablespoon is 0 , then the Cup is 0
;; the tablespoon is 8 , then the Cup is 0.5
;; the tablespoon is 32, then the Cup is 2
(define (Tbsp->Cup tablespoon)
  (/ tablespoon 16)
)


;; Cup->Gal: number -> number
;; converts Cup to Gallon, given the value in Cup
;; Examples:
;; the Cup is 0 , then the Gallon is 0
;; the Cup is 8 , then the Gallon is 0.5
;; the Cup is 16, then the Gallon is 2
(define (Cup->Gal valueCup)
  (/ valueCup 16)
)


;; Gal->Barrels: number -> number
;; converts Gallon to Barrel, given the value in Gallon
;; Examples:
;; the Gallon is 0 , then the Barrel is 0
;; the Gallon is 21, then the Barrel is 0.5
;; the Gallon is 84, then the Barrel is 2
(define (Gal->Barrels gallons)
  (/ gallons 42)
)


;; Tbsp->Barrels: number -> number
;; convert Tablespoon to Barrels, given the value in Tablespoon
;; Example:
;; the Tablespoon is 0    , then the Barrels is 0
;; the Tablespoon is 5376 , then the Barrels is 0.5
;; the Tablespoon is 21504, then the Barrels is 2
(define (Tbsp->Barrels Tablespoon)
  (Gal->Barrels (Cup->Gal (Tbsp->Cup Tablespoon)))
)


;; Tests

(Tbsp->Cup 0 ) "should be" 0
(Tbsp->Cup 8 ) "should be" 0.5
(Tbsp->Cup 32) "should be" 2

(Cup->Gal 0 ) "should be" 0
(Cup->Gal 8 ) "should be" 0.5
(Cup->Gal 32) "should be" 2

(Gal->Barrels 0 ) "should be" 0
(Gal->Barrels 21) "should be" 0.5
(Gal->Barrels 84) "should be" 2


(Tbsp->Barrels 0    ) "should be" 0
(Tbsp->Barrels 5376 ) "should be" 0.5
(Tbsp->Barrels 21504) "should be" 2