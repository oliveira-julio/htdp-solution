;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Problem 4:
;; Develop a function that when given an initial amount of money (called the principal),
;; a simple annual interest rate, and a number of months will compute the balance at the end of that time.
;; Assume that no additional deposits or withdrawals are made and and that a month is 1/12 of a year.
;; Total interest is the product of the principal, the annual interest rate expressed as a decimal, and the number of years.


;; percent-to-decimal: number -> number
;; determines the equivalent in decimal from a percent, given a number in percent.

;; EXAMPLES
;; the number is 100, the equivalent in decimal is 1
;; the number is 0,   the equivalent in decimal is 0
;; the number is 12,  the equivalent in decimal is 0.12

(define (percent-to-decimal numberInPercent)
  (* numberInPercent 0.01)
)

;; TESTS
(percent-to-decimal 100) "should be" 1
(percent-to-decimal 0) "should be" 0
(percent-to-decimal 12) "should be" 0.12


;; rate-yearly-to-monthly : number -> number
;; determines the monthly rate in decimal, given a yearly rate in decimal

;; EXAMPLES
;; the yearly rate is 1, then the monthly rate is (/ 1 12)
;; the yearly rate is 0, then the monthly rate is 0
;; the yearly rate is 0.12, then the monthly rate is 0.01

(define ( rate-yearly-to-monthly yearlyRate)
  (/ yearlyRate 12)
)

;; TESTS
(rate-yearly-to-monthly 1) "should be" (/ 1 12)
(rate-yearly-to-monthly 0) "should be" 0
(rate-yearly-to-monthly 0.12) "should be" 0.01



;; investment-income: number number number -> number
;; determines the investment income, given initial amount of money (called the principal),
;; the months of investment, and the yearly rate in percent.

;; EXAMPLES
;; the principal is 1000, the months is 12 and the yearly rate is 100, then the investment income is 1000.
;; the principal is 1000, the months is 10 and the yearly rate is 0,   then the investment income is 0.
;; the principal is 1000, the months is 10 and the yearly rate is 12,  then the investment income is 100.
(define (investment-income principal monthsOfInvestment yearlyRate)
  (* principal
     monthsOfInvestment
     (rate-yearly-to-monthly (percent-to-decimal yearlyRate) )
  )
)

;; TESTS
(investment-income 1000 12 100) "should be" 1000
(investment-income 1000 10 0  ) "should be" 0
(investment-income 1000 10 12 ) "should be" 100



;; amount-after-investment: number number number -> number
;; determines the amount after investment, given initial amount of money (called the principal),
;; the months of investment, and the yearly rate in percent.


;; EXAMPLES
;; the principal is 1000, the months is 12 and the yearly rate is 100, then the investment income is 2000.
;; the principal is 1000, the months is 10 and the yearly rate is 0,   then the investment income is 1000.
;; the principal is 1000, the months is 10 and the yearly rate is 12,  then the investment income is 1100.

(define (amount-after-investment principal monthsOfInvestment yearlyRate)
  (+ principal (investment-income principal monthsOfInvestment yearlyRate))
)

;; TESTS
(amount-after-investment 1000 12 100) "should be" 2000
(amount-after-investment 1000 10 0  ) "should be" 1000
(amount-after-investment 1000 10 12 ) "should be" 1100