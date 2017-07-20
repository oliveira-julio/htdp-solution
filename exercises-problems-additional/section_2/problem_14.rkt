;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_14) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Problem 14:

;; 1.
;; Write a contract for a function that finds the number of inches in a given number of feet.

;; 2.
;; Write a purpose and contract for a function (operation) that finds the gas consumption (miles per gallon)
;; for a particular vehicle.

;; 3.
;; Write a purpose and contract for a function that computes the slope of a line if the change in y-value and
;; the change in x-value are given.

;; 4.
;; Write the purpose, contract and two examples for a function that consumes the length, width, and depth of
;; a tank and produces its volume.

;; 5.
;; Write the purpose, contract, two examples, and header for a function that consumes five quiz grades for
;; a student and produces the quiz average.

;; 6.
;; Write the purpose, contract, two examples, the header and the body for a function that consumes
;; the amount of money a family spends on groceries per week and that computes the yearly cost
;; of groceries for that family.




;; 1.
;; feet-to-inche: number -> number


;; 2.
;; miles-per-gallon: number number -> number
;; determines the gas consumption of a vehicle in miles per gallon,
;; given the miles travelled and the number of gallons used


;; 3.
;; slope: number number -> number
;; determines the slope of a line, given the y-value and the x-value.


;; 4.
;; volume: number number number -> number
;; determines the volume of a tank, given the length, the width, and the depth

;; EXAMPLES
;; the length is 1, the width is 1, the depth is 1, then the volume is 1
;; the length is 2, the width is 3, the depth is 4, then the volume is 24


;; 5.
;; quiz-average: number number number number number -> number
;; determines the average of five notes of a student, given the five notes in order

;; EXAMPLES
;; the grades of quiz are 1 2 3 4 5, then the average is 3
;; the grades of quiz are 4 7 2 9 5, then the average is 5.4

(define (quiz-average first second third fourth fifth) ... )


;; 6.
;; groceries-weekly-to-yearly: number -> number
;; determines the amount of money a family spends on groceries yearly using like base
;; your spends on groceries weekly, given the amount of money spends in groceries weekly

;; EXAMPLES
;; the spends weekly on groceries is 0, then the spends yearly on groceries is 0
;; the spends weekly on groceries is 15, then the spends yearly on groceries is 780

(define (groceries-weekly-to-yearly spendsWeekly)
  (* spendsWeekly 52)
)
