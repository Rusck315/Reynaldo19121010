(defun sumaNumero()
	(princ "Dame un numero ")
	(setq num1 (read))
	(princ "Dame un segundo numero: ")
	(setq num2 (read))
	(setq resultado (+ num1 num2))
	;(write resultado)
)

(defun areaCuadrado()
	(princ "Dame la medida de un lado ")
	(setq num1 (read))
	(setq resultado (* num1 num1))
	;(write resultado)
)

(defun areaRectangulo()
	(princ "Dame la medida de un lado ")
	(setq num1 (read))
	(princ "Dame la medida de otro lado: ")
	(setq num2 (read))
	(setq resultado (* num1 num2))
	;(write resultado)
)

(defun areaCirculo()
	(princ "Dame el radio del circulo ")
	(setq num1 (read))
	(setq resultado (* (* num1 num1) 3.1416))
	;(write resultado)
)

(defun areaHexagono()
	(princ "Dame la medida de un lado ")
	(setq num1 (read))
	(princ "Dame la medida de su apotena: ")
	(setq num2 (read))
	(setq resultado (* (* 3 num1) num2))
	;(write resultado)
)

(defun area()
	(princ "Dame la medida de un lado ")
	(setq num1 (read))
	(princ "Dame la medida de otro lado: ")
	(setq num2 (read))
	(setq resultado (* num1 num2))
	;(write resultado)
)

(defun areaTriangulo()
	(princ "Dame la medida de la base ")
	(setq num1 (read))
	(princ "Dame la medida de la altura: ")
	(setq num2 (read))
	(setq resultado (/ (* num1 num2) 2))
	;(write resultado)
)