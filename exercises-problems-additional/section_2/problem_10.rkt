;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_10) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Problem 10:
;; Develop the function, total-inches.The function consumes a length represented by two numbers:
;; the first a number of feet, and the second a number of inches.
;; The function produces the total length in inches.


;; feet-to-inch: number -> number
;; convert a number of feet to inches, given the number of feet

;; EXAMPLES
;; the number of feet is 0,  then the number of inches is 0
;; the number of feet is 1,  then the number of inches is 12
;; the number of feet is 12, then the number of inches is 144

(define (feet-to-inch numberOfFeet)
  (* numberOfFeet 12)
)

;; TESTS
(feet-to-inch 0 ) "should be" 0
(feet-to-inch 1 ) "should be" 12
(feet-to-inch 12) "should be" 144



;; total-inches: number number -> number
;; determines the total in inches, given number of feet and numbers of inches.

;; EXAMPLES
;; the number of feet is 0  and the number of inches is 0,  then the total in inches is 0
;; the number of feet is 1  and the number of inches is 5,  then the total in inches is 17
;; the number of feet is 12 and the number of inches is 16, then the total in inches is 160

(define ( total-inches numberOfFeet numberOfInches)
  (+ (feet-to-inch numberOfFeet) numberOfInches)
)

;; TESTS
(total-inches 0  0 ) "should be" 0
(total-inches 1  5 ) "should be" 17
(total-inches 12 16) "should be" 160
