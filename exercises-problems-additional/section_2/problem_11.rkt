;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_11) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; thousands-of-a-salary: number -> number
;; determines how many thousands have a salary, given the salary

;; EXAMPLES
;; the salary is 999,    then he have 0   thousand
;; the salary is 10000,  then he have 10  thousands
;; the salary is 278921, then he have 278 thousands

(define ( thousands-of-a-salary salary)
  (floor (/ salary 1000) )
)

;; TESTS
(thousands-of-a-salary 999) "should be" 0
(thousands-of-a-salary 10000) "should be" 10
(thousands-of-a-salary 278921) "should be" 278


;; Progressiva-tax: number -> number
;; determines in percent the tax which will paid using the Progressiva tax code, given the salary

;; EXAMPLES
;; the salary is 999, then the tax is 0
;; the salary is 10000, then the tax is 5
;; the salary is 278921, then the tax is 139

(define (progressiva-tax salary)
  (* 1/2 (thousands-of-a-salary salary) )
)

;; TESTS
(progressiva-tax 999) "should be" 0
(progressiva-tax 10000) "should be" 5
(progressiva-tax 278921) "should be" 139


;; net-pay: number -> number
;; determines the net pay of a salary after applied the Progressiva tax, given the salary

;; EXAMPLES
;; the salary is 999, then the net pay is 999
;; the salary is 10000, then the net pay is 9500
;; the salary is 278921, then the net pay is -108779.19

(define (net-pay salary)
  (- salary (* salary 0.01 (progressiva-tax salary) ) )
)

;; TESTS
(net-pay 999   ) "should be" 999
(net-pay 10000 ) "should be" 9500
(net-pay 278921) "should be" -108779.19



;; an income over 200000 will pay more than it earns
(net-pay 200000) "should be" 0