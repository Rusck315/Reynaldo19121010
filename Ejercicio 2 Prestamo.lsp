(defun prestamo ()
  (princ "¿Cuál es el nombre? ")
  (setq Nombre (read))
  (princ "¿El historial es bueno o malo? ")
  (setq Historial (read))
  (princ "¿Cuánto pide? ")
  (setq Cantidad (read))
  (princ "¿Valor de otras propiedades? ")
  (setq VPropiedades (read))



  (if (equal Historial 'm)
      (format t "El historial es bueno.~%")


      (format t "El historial es malo, no hay prestamo.~%")))

(prestamo)