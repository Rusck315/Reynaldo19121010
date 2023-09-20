(defun Mes()
    (princ "¿que numero del mes es? " )
    (setq pant (read))

    (let  ((dia
            (case pant
            ((2) "28" )
            ((4 6 9 11) "30")
            ((1 3 5 7 8 10 12) "31"))))
            
            
            (format t "Dias del mes: ~A~%" dia)))

(Mes)

