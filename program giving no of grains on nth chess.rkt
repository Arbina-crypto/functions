;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |program giving no of grains on nth chess|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "testing.rkt" "teachpack" "htdp") (lib "web-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "testing.rkt" "teachpack" "htdp") (lib "web-io.rkt" "teachpack" "2htdp")) #f)))
;
; let N be the no of grains on chess square no n
;  [N =1; n=1}
;  [N = (n-1)2; 1<n<=64 ] 



(define (grain-no-on-chess n)
      {cond
      [( = n 1) 1]
      [else (* ( - n 1) 2)]})

    (grain-no-on-chess 16)



     (check-expect (grain-no-on-chess 3) 4)

    (check-expect (grain-no-on-chess 5) 8)

    (check-expect (grain-no-on-chess 64) 126)