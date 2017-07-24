;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.3.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; tax : number -> number
;; Calculates a tax of 15% from a value

;; EXAMPLES
;; the value is 50,  then the tax is 7.5
;; the value is 10,  then the tax is 1.5
;; the value is 200, then the tax is 30

(define (tax value)
  (* value 15/100)
)


;; wage : number -> number
;; determine the wage, given the number of hours.

;; EXAMPLES
;; hours is 10, then the wage is 120.
;; hours is 25, then the wage is 300.
;; hours is 49, then the wage is 588.

(define (wage hours)
  (* hours 12)
)


;; netpay : number -> number
;; determines the net pay of an employee from the number of hours worked.

;; EXAMPLES
;; the employee worked 10 hours, then the net pay is 102
;; the employee worked 25 hours, then the net pay is 255
;; the employee worked 50 hours, then the net pay is 510

(define (netpay hours-worked)
  (- (wage hours-worked)
     (tax (wage hours-worked))
  )
)


;; EXAMPLES TESTS
(tax 120) "should be" 18
(tax 300) "should be" 45
(tax 600) "should be" 90

(wage 10)"should be" 120
(wage 25)"should be" 300
(wage 50)"should be" 600

(netpay 10)"should be" 102
(netpay 25)"should be" 255
(netpay 50)"should be" 510
