def calcularPrecioSuscripcion(tipo)
	case tipo
		when "Vamos"
			precio = 150
		when "Cosas"
			precio = 170
		when "Automas"
			precio = 250
		when "Construye"
			precio = 200
		else
			precio = 0	
	end
	return precio

end

def calcularDescuentoCantidad(cantidad)
	if cantidad > 1 && cantidad <= 10
		return 0.0
	elsif cantidad > 10 && cantidad <= 100
		return 0.15
	elsif cantidad > 100 && cantidad <= 200
		return 0.21
	else 
		cantidad > 200
	    return 0.25
	end
end


def calcularTotalPagar(tipo,cantidad)
	total = calcularPrecioSuscripcion(tipo) * cantidad
	totalcondescuento = total - total * calcularDescuentoCantidad(cantidad)
	return totalcondescuento

end

#--- zona de test ----

puts calcularTotalPagar("Cosas",100)
puts calcularDescuentoCantidad(100)
puts calcularPrecioSuscripcion("Cosas")


