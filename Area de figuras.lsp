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

(defun areaPentagono()
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

(defun areaParalelogramo()
	(princ "Dame la medida de un lado ")
	(setq num1 (read))
	(princ "Dame la medida de otro lado: ")
	(setq num2 (read))
	(setq resultado (* num1 num2))
	;(write resultado)
)

(defun areaTrapecio()
	(princ "Dame la medida la base ")
	(setq num1 (read))
	(princ "Dame la medida el lado de arriba: ")
	(setq num2 (read))
	(princ "Dame la altura: ")
	(setq num3 (read))
	(setq resultado (/ (* (+ num1 num2) num3) 2))
	;(write resultado)
)

(defun areaCubo()
	(princ "Dame la medida de un lado: ")
	(setq num1 (read))
	(setq resultado (* num1 6))
	;(write resultado)
)

(defun areaRombo()
	(princ "Dame la medida del primer radio: ")
	(setq num1 (read))
	(princ "Dame la medida del otro radio: ")
	(setq num2 (read))
	(setq resultado (/ (* num1 num2) 2))
	;(write resultado)
)

