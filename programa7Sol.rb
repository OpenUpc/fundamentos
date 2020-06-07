def calcularValorLavado(modelo)
	case modelo
		when "Sedan"
			precio = 5.50
		when "Camioneta"
			precio = 7.90
		when "4x4"
			precio = 10.00
		when "Van"
			precio = 13.90
		else
			precio = 0.0
	end

end

def calcularValorServicioAdicional(modelo)
	case modelo
		when "Sedan"
			precio = 2.50
		when "Camioneta"
			precio = 3.90
		when "4x4"
			precio = 5.00
		when "Van"
			precio = 7.30
		else
			precio = 0.0
	end

end

def calcularValorTotalPagar(modelo, adicional, quintavisita)
	if adicional==true
		costoAdicional = calcularValorServicioAdicional(modelo)
	else
        costoAdicional = 0
	end

	if quintavisita ==true
	   descuento = 0.15
	else
	   descuento = 0.0
	end

    total = calcularValorLavado(modelo) + costoAdicional - descuento*calcularValorLavado(modelo)

    return total
end

#--- zona de test ----
puts calcularValorLavado("4x4")
puts calcularValorServicioAdicional("4x4")
puts calcularValorTotalPagar("4x4", true, true)