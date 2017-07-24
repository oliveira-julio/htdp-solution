;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_7) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Problem 7:
;; Develop a function to return the mean of 5 exam scores.


;; mean-of-five-scores: number number number number number -> number
;; determines the mean of five scores, given the scores in order
;; the first score is 1, second is 1, third is 1, fourth is 1, fifth is 1, the mean is 1
;; the first score is 1, second is 2, third is 3, fourth is 4, fifth is 5, the mean is 3
;; the first score is 4, second is 3, third is 7, fourth is 5, fifth is 1, the mean is 4

(define (mean-of-five-scores first second third fourth fifth)
  (/ (+ first second third fourth fifth) 5)
)

;; TESTS
(mean-of-five-scores 1 1 1 1 1) "should be" 1
(mean-of-five-scores 1 2 3 4 5) "should be" 3
(mean-of-five-scores 4 3 7 5 1) "should be" 4
