;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_12) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Problem 12:
;; Develop the function, semester-grade. The function consumes two numbers --
;; the first representing a cumulative homework score and the other representing the final exam score --
;; and produces the semester grade weighted 80% homework and 20% final exam.

;; semester-grade: number number -> number
;; determines the grade of a semester using the weighted average of
;; the homework that is worth 80% and the final exam that is worth 20%,
;; given the cumulative homework score and the final exam score

;; EXAMPLES
;; the homework score is 0 and the final exam score is 0, then the semester grade is 0
;; the homework score is 10 and the final exam score is 10, then the semester grade is 10
;; the homework score is 7 and the final exam score is 8, then the semester grade is 7.2

(define (semester-grade scoreHomework scoreFinalExam)
  (+ (* scoreHomework 8/10) (* scoreFinalExam 2/10) )
)

;; TESTS
(semester-grade 0  0 ) "should be" 0
(semester-grade 10 10) "should be" 10
(semester-grade 7  8 ) "should be" 7.2
