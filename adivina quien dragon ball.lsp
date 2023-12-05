
(defun funcion-raza ()
  (princ "Tu personaje es humano? (si/no): ")
  (setq respuesta (read-line))
  (cond
    ((equal respuesta "si") (funcion-humano))
    ((equal respuesta "no") (funcion-sayayin))
    (t (format t "Respuesta no válida."))
  )
)

; Llamar a la función razahumano para obtener la respuesta del usuario.
(funcion-raza)


(defun funcion-humano ()
  (princ "Tu personaje es un guerrero z? (si/no): ")
  (setq respuesta (read-line))
  (cond
    ((equal respuesta "si") (funcion-humano-guerrero-z))
    ((equal respuesta "no") (funcion-humano-no-guerrero-z))
    (t (format t "Respuesta no válida."))
  )
)


(defun funcion-humano-guerrero-z ()
  (format t "Tu personaje es un guerrero z."))

  (defun funcion-humano-no-guerrero-z ()
  (format t "Tu personaje no es un guerrero z."))





  




  





(defun funcion-sayayin ()
  (princ "Tu personaje es un sayayin? (si/no): ")
  (setq respuesta (read-line))
  (cond
    ((equal respuesta "si") (funcion-si-sayayin))
    ((equal respuesta "no") (funcion-si-hibrido))
    (t (format t "Respuesta no válida."))
  )
)


 (defun funcion-si-sayayin ()
  (princ "Tu personaje es un guerrero z? (si/no): ")
  (setq respuesta (read-line))
  (cond
    ((equal respuesta "si") (funcion-si-saiyayin-guerrero-z))
    ((equal respuesta "no") (funcion-si-sayayin-no-guerrero-z))
    (t (format t "Respuesta no válida."))
  )
 )


    (defun funcion-si-sayayin-no-guerrero-z ()
  (princ "Tu personaje invadio la tierra? (si/no): ")
  (setq respuesta (read-line))
  (cond
    ((equal respuesta "si") (funcion-invadio-la-tierra))
    ((equal respuesta "no") (funcion-bardock))
    (t (format t "Respuesta no válida."))
  )
    )


  


  (defun funcion-invadio-la-tierra ()
  (princ "Tu personaje tiene el peinado de la roca? (si/no): ")
  (setq respuesta (read-line))
  (cond
    ((equal respuesta "si") (funcion-nappa))
    ((equal respuesta "no") (funcion-raditz))
    (t (format t "Respuesta no válida."))
  )
  )





  (defun funcion-bardock ()
  (format t "Tu personaje bardock.")) 

  (defun funcion-nappa ()
  (format t "Tu personaje nappa."))
  
  (defun funcion-raditz ()
  (format t "Tu personaje raditz.")) 




(defun funcion-si-hibrido ()
  (princ "Tu personaje es hijo de goku? (si/no): ")
  (setq respuesta (read-line))
  (cond
    ((equal respuesta "si") (funcion-hijo-de-goku))
    ((equal respuesta "no") (funcion-no-hijo-de-goku))
    (t (format t "Respuesta no válida."))
  )
)


 (defun funcion-hijo-de-goku ()
  (princ "Tu personaje venció a cel? (si/no): ")
  (setq respuesta (read-line))
  (cond
    ((equal respuesta "si") (funcion-gohan))
    ((equal respuesta "no") (funcion-goten))
    (t (format t "Respuesta no válida."))
  )
 )

  (defun funcion-gohan ()
  (format t "Tu personaje gohan."))

  (defun funcion-goten ()
  (format t "Tu personaje goten."))




 (defun funcion-no-hijo-de-goku ()
  (princ "Tu personaje llegó a viajar en el tiempo? (si/no): ")
  (setq respuesta (read-line))
  (cond
    ((equal respuesta "si") (funcion-trunks))
    ((equal respuesta "no") (funcion-pan))
    (t (format t "Respuesta no válida."))
  )
 )

  (defun funcion-trunks ()
  (format t "Tu personaje trunks."))

  (defun funcion-pan ()
  (format t "Tu personaje pan."))













(defun funcion-no-humano ()
  (format t "Tu personaje no es un humano."))

