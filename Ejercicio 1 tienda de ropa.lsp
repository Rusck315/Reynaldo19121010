(defun pantalones()
    (princ "¿cuantos pantalones vas a comprar? " )
    (setq pant (read))

    (let  ((descuento
            (case pant
            ((1 2 3 4) "sin descuento" )
            ((5 6 7 8 9 10 11) "15 de descuento")
            ((> pant 12) "30% de descuento"))))
            
            
            (format t "Descuento aplicable: ~A~%" descuento)))
        


(pantalones)


(defun pantalones2 ()
  (princ "¿Cuántos pantalones vas a comprar? ")
  (setq pant (read))

  (let ((descuento "Sin descuento"))
    (when (<= pant 4)
      (setq descuento "0% de descuento"))
    (when (<= pant 11)
      (setq descuento "15% de descuento"))
    (when (> pant 12)
      (setq descuento "30% de descuento"))
    
    (format t "Descuento aplicable: ~A~%" descuento)))

(pantalones2)