;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; English        metric
;; 1 inch	= 2.54	 cm
;; 1 foot	= 12	 in.
;; 1 yard	= 3	 ft.
;; 1 rod	= 5(1/2) yd.
;; 1 furlong	= 40	 rd.
;; 1 mile	= 8	 fl.
;; Develop the functions inches->cm, feet->inches, yards->feet,
;; rods->yards, furlongs->rods, and miles->furlongs.
;; Then develop the functions feet->cm, yards->cm, rods->inches, and miles->feet.

(define inches-to-cm-metric      2.54)
(define feet-to-inches-metric    12  )
(define yards-to-feet-metric     3   )
(define rods-to-yards-metric     5.5 )
(define furlongs-to-rods-metric  40  )
(define miles-to-furlongs-metric 8   )


;; inches->cm : number -> number
;; convert inches to cm, given the inches.
;; Examples:
;; the inches is 0, then cm is 0
;; the inches is 1, then cm is 2.54
;; the inches is 5, then cm is 12.7
(define (inches->cm inches)
  (* inches inches-to-cm-metric)
)


;; feet->inches: number -> number
;; convert feet to inches, given the feet.
;; Examples:
;; the feet is 0, then the inches is 0
;; the feet is 1, then the inches is 12
;; the feet is 5, then the inches is 60
(define (feet->inches feet)
  (* feet feet-to-inches-metric)
)


;; yards->feet : number -> number
;; convert yards to feet, given the yards.
;; Examples:
;; the yards is 0, then feet is 0
;; the yards is 1, then feet is 3
;; the yards is 5, then feet is 15
(define (yards->feet yards)
  (* yards yards-to-feet-metric)
)


;; rods->yards: number -> number
;; convert rods to yards, given the rods.
;; Examples:
;; the rods is 0, then the yards is 0
;; the rods is 1, then the yards is 5.5
;; the rods is 5, then the yards is 27.5
(define (rods->yards rods)
  (* rods rods-to-yards-metric)
)


;; furlongs->rods: number -> number
;; convert furlongs to rods, given the furlongs.
;; Examples:
;; the furlongs is 0, then the rods is 0
;; the furlongs is 1, then the rods is 40
;; the furlongs is 5, then the rods is 200
(define (furlongs->rods furlongs)
  (* furlongs furlongs-to-rods-metric)
)


;; miles->furlongs: number -> number
;; convert miles to furlongs, given the furlongs.
;; Examples:
;; the miles is 0, then the furlongs is 0
;; the miles is 1, then the furlongs is 8
;; the miles is 5, then the furlongs is 40
(define (miles->furlongs miles)
  (* miles miles-to-furlongs-metric)
)

;; feet->cm, yards->cm, rods->inches, and miles->feet.

;; feet->cm: number -> number
;; convert feet to cm, given the feet
;; Examples:
;; the feet is 0, then cm is 0
;; the feet is 1, then cm is 30.48
;; the feet is 5, then cm is 152.4
(define (feet->cm feet)
  (inches->cm (feet->inches feet))
)


;; yards->cm: number -> number
;; convert yards to cm, given the yards.
;; Examples:
;; the yards is 0, then cm is 0
;; the yards is 1, then cm is 91.44
;; the yards is 5, then cm is 457.2
(define (yards->cm yards)
  (feet->cm (yards->feet yards))
)


;; rods->inches: number -> number
;; convert rods to inches, given the rods
;; Examples:
;; the rods is 0, then inches is 0
;; the rods is 1, then inches is 198
;; the rods is 5, then inches is 990
(define (rods->inches rods)
  (feet->inches (yards->feet (rods->yards rods)))
)


;; miles->feet: number -> number
;; convert miles to feet, given the feet
;; Examples
;; the miles is 0, then feet is 0
;; the miles is 1, then feet is 5280
;; the miles is 5, then feet is 26400
(define (miles->feet miles)
  (yards->feet (rods->yards (furlongs->rods (miles->furlongs miles))))
)


;; Tests:
(inches->cm 0) "should be" 0
(inches->cm 1) "should be" 2.54
(inches->cm 5) "should be" 12.7

(feet->inches 0) "should be" 0
(feet->inches 1) "should be" 12
(feet->inches 5) "should be" 60

(yards->feet 0) "should be" 0
(yards->feet 1) "should be" 3
(yards->feet 5) "should be" 15

(rods->yards 0) "should be" 0
(rods->yards 1) "should be" 5.5
(rods->yards 5) "should be" 27.5

(furlongs->rods 0) "should be" 0
(furlongs->rods 1) "should be" 40
(furlongs->rods 5) "should be" 200

(miles->furlongs 0) "should be" 0
(miles->furlongs 1) "should be" 8
(miles->furlongs 5) "should be" 40


(feet->cm 0) "should be" 0
(feet->cm 1) "should be" 30.48
(feet->cm 5) "should be" 152.4

(yards->cm 0) "should be" 0
(yards->cm 1) "should be" 91.44
(yards->cm 5) "should be" 457.2

(rods->inches 0) "should be" 0
(rods->inches 1) "should be" 198
(rods->inches 5) "should be" 990

(miles->feet 0) "should be" 0
(miles->feet 1) "should be" 5280
(miles->feet 5) "should be" 26400
