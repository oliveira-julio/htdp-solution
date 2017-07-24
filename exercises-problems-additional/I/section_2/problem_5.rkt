;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;;Problem 5:
;; Develop a function that when given the length and width of a rectangular floor and
;; the edge length of a square tile will compute the whole number of tiles needed to cover the floor completely.


;; tiles-needed-to-cover-floor: number number number -> number
;; determines how much square tiles is needed to cover the floor completely,
;; given the length and the width of the floor, and the length of the tile.

;; EXAMPLES
;; the length of floor is 10, the width of floor is 10, the length of tile is 2, is needed 25 tiles to cover floor.
;; the length of floor is 1,  the width of floor is 10, the length of tile is 6, is needed 2  tiles to cover floor.
;; the length of floor is 3,  the width of floor is 13, the length of tile is 4, is needed 4  tiles to cover floor.

(define (tiles-needed-to-cover-floor lengthFloor widthFloor lengthTile)
  (* (ceiling (/ lengthFloor lengthTile) )
     (ceiling (/ widthFloor lengthTile ) )
  )
)

;; TESTS
(tiles-needed-to-cover-floor 10 10 2) "should be" 25
(tiles-needed-to-cover-floor 1  10 6) "should be" 2
(tiles-needed-to-cover-floor 3  13 4) "should be" 4