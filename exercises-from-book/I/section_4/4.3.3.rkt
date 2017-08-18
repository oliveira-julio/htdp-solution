;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.3.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


(define (cond1 n)
  (cond
    [(<= n 1000) (* 0.40 1000)]
    [(<= n 5000) (+ (* 1000 0.040)
                    (* (- n 1000) 0.45))]
    [else (+ (* 1000 0.40)
             (* 4000 0.45)
             (* (- n 10000) 0.55))])
)

;; when n is
(= (cond1 500) 400)
(= (cond1 2800) 850)
(= (cond1 15000) 4950)