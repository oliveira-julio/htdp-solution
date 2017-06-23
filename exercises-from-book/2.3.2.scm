;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.3.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; sum-coins : number number number number -> number
;; Determines the value of a bag of coins, it info the amount of money in the bag
;; the value of 1 penny   is 1
;; the value of 1 nickel  is 5 pennies
;; the value of 1 dime    is 10 pennies
;; the value of 1 quarter is 25 pennies

;; EXAMPLES
;; into a bag have 1 penny  , 1 nickel,  1 dime,  and 1 quarter,  then have 41  pennies
;; into a bag have 2 pennies, 2 nickels, 2 dimes, and 2 quarters, then have 82  pennies
;; into a bag have 0 penny,   0 nickel,  0 dimes, and 4 quarters, then have 100 pennies

(define (sum-coins pennies nickels dimes quarters)
  (+ pennies
     (* nickels  5 )
     (* dimes    10)
     (* quarters 25)
  )
)

;; EXAMPLES TUNED INTO TESTS
(sum-coins 1  1  1  1)"should be"41
(sum-coins 2  2  2  2)"should be"82
(sum-coins 0  0  0  4)"should be"100