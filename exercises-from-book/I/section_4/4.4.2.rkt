;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.4.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


(define hourly-pay-rate 12)

 
;; tax-rate: number -> number
;; Determines the tax rate for the given a gross pay >= 0
;; Examples
;; the gross pay is 240, then the rate is 0.00
;; the gross pay is 480, then the rate is 0.15
;; the gross pay is 600, then the rate is 0.28
(define (tax-rate gross-pay)
  (cond
    [(<= gross-pay 240) 0]
    [(<= gross-pay 480) 0.15]
    [(>  gross-pay 480) 0.28])
)


;; tax: number -> number
;; Determines the amount of tax owed, given the gross pay >= 0
;; the gross pay is 240, then the tax owed is 0
;; the gross pay is 480, then the tax owed is 72
;; the gross pay is 600, then the tax owed is 168
(define (tax gross-pay)
  (* gross-pay (tax-rate gross-pay))
)


;; grosspay: number -> number
;; Determines the gross pay, given the number of hours worked.
;; Examples:
;; the hours worked is 20, then the gross pay is 240
;; the hours worked is 40, then the gross pay is 480
;; the hours worked is 50, then the gross pay is 600
(define (grosspay hours-worked)
  (* hours-worked hourly-pay-rate)
)


;; netpay-base: number -> number
;; Determines the netpay, given the grosspay >=0
;; Examples
;; the grosspay is 240, then the net pay is 240
;; the grosspay is 480, then the net pay is 408
;; the grosspay is 600, then the net pay is 432
(define (netpay-base grosspay-amount)
  (- grosspay-amount
     (tax grosspay-amount))
)


;; netpay: number -> number
;; Determines the netpay, given the number of hours worked.
;; Examples
;; the hours worked is 20, then the netpay is 240
;; the hours worked is 40, then the netpay is 408
;; the hours worked is 50, then the netpay is 432
(define (netpay hours-worked)
  (netpay-base (grosspay hours-worked))
)


;; Tests
(= (tax-rate 240) 0)
(= (tax-rate 480) 0.15)
(= (tax-rate 600) 0.28)

(= (tax 240) 0)
(= (tax 480) 72)
(= (tax 600) 168)

(= (grosspay 20) 240)
(= (grosspay 40) 480)
(= (grosspay 50) 600)

(= (netpay-base 240) 240)
(= (netpay-base 480) 408)
(= (netpay-base 600) 432)

(= (netpay 20) 240)
(= (netpay 40) 408)
(= (netpay 50) 432)