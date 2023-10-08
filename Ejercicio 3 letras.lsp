(defun letras ()
  (princ "¿Cuál es la letra? ")
  (setq letra (read))

  (let ((letraa
        (case letra
        ((a e i o u) "es una vocal")
        ((y) "es una semivocal")
        (t "es una consonante"))
        ))

        (format t "La letra ~A ~A.~%" letra letraa)
    )
 )


(letras)