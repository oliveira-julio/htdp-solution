;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.3.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; cond 1
;; (cond
;;   [(< n 10) 20)]
;;   [(> n 20) 0]
;;   [else 1])


;; cond 2
;; (cond
;;   [(< n 10) 20]
;;   [(and (> n 20) (<= n 30))]
;;   [else 1])


;; cond 3
;; (cond
;;   [(< n 10) 20]
;;   [* 10 n]
;;   [else 555])



;; cond 1 is legal, cond 2 is illegal because the second cond-line no have ANSWER.
;; cond 3 is illegal because the second cond-line no have CONDITION.