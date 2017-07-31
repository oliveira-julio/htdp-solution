;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


(define rate-federally-equal-or-below-35000 0.15)
(define rate-federally-between-35000-and-100000 0.25)
(define rate-federally-over-100000 0.35)
(define rate-state-equal-or-below-50000 0)
(define rate-state-over-50000 0.05)


;; federally-equal-or-below-35000: number -> number
;; determines the federally tax to pay of a income equal or below 35000, given the income
;; Examples:
;; the income is 0, then the tax to pay is 0
;; the income is 17500, then the tax to pay is 2625
;; the income is 35000, then the tax to pay is 5250
(define (federally-equal-or-below-35000 income)
  (* income rate-federally-equal-or-below-35000)
)


;; federally-between-35000-and-100000: number -> number
;; determines the federally tax to pay of a income greater which 35000 and equal or below 100000,
;; given the income
;; Examples:
;; the income is 50000 , then the tax to pay is 3750
;; the income is 75000 , then the tax to pay is 10000
;; the income is 100000, then the tax to pay is 16250
(define (federally-between-35000-and-100000 income)
  (* (- income 35000) rate-federally-between-35000-and-100000)
)


;; federally-over-100000: number -> number
;; determines the federally tax to pay of a income greater 100000, given the income
;; Examples:
;; the income is 125000, then the tax to pay is 8750
;; the income is 150000, then the tax to pay is 17500
;; the income is 200000, then the tax to pay is 35000
(define (federally-over-100000 income)
  (* (- income 100000) rate-federally-over-100000)
)


;; state-equal-or-below-50000: number -> number
;; determines the state tax to pay of a income equal or below 50000, given the income
;; Examples:
;; the income is 0, then the tax to pay is 0
;; the income is 25000, then the tax to pay is 0
;; the income is 50000, then the tax to pay is 0
(define (state-equal-or-below-50000 income)
  (* income rate-state-equal-or-below-50000)
)


;; state-over-50000: number -> number
;; determines the state tax to pay of a income greater 50000, given the income
;; Examples:
;; the income is 100000, then the tax to pay is 2500
;; the income is 150000, then the tax to pay is 5000
;; the income is 200000, then the tax to pay is 7500
(define (state-over-50000 income)
  (* (- income 50000) rate-state-over-50000)
)


;; total-tax-to-pay-over-100000: number -> number
;; determines the total to pay of a income greater 100000, given the income
;; Examples:
;; the income is 150000, then the total is 44000
;; the income is 200000, then the total is 64000
(define (total-tax-to-pay-over-100000 income)
  (+ (federally-equal-or-below-35000 35000)
     (federally-between-35000-and-100000 100000)
     (federally-over-100000 income)
     (state-equal-or-below-50000 50000)
     (state-over-50000 income)
  )
)


;; Tests
(federally-equal-or-below-35000 0)     "should be" 0
(federally-equal-or-below-35000 17500) "should be" 2625
(federally-equal-or-below-35000 35000) "should be" 5250

(federally-between-35000-and-100000 50000 ) "should be" 3750
(federally-between-35000-and-100000 75000 ) "should be" 10000
(federally-between-35000-and-100000 100000) "should be" 16250

(federally-over-100000 125000) "should be" 8750
(federally-over-100000 150000) "should be" 17500
(federally-over-100000 200000) "should be" 35000

(state-equal-or-below-50000 0)     "should be" 0
(state-equal-or-below-50000 25000) "should be" 0
(state-equal-or-below-50000 50000) "should be" 0

(state-over-50000 100000) "should be" 2500
(state-over-50000 150000) "should be" 5000
(state-over-50000 200000) "should be" 7500


(total-tax-to-pay-over-100000 150000) "should be" 44000
(total-tax-to-pay-over-100000 200000) "should be" 64000