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
			precio =0
	end
	return precio

end

def calcularDescuentoCantidad(cantidad)
	case cantidad 
		when 1..10
			revista = 1
		when 11..100
			revista = 0.85
		when 101..200
			revista = 0.79
		else revista = 0.75
	end
	return revista

end


def calcularTotalPagar(tipo,cantidad)

	total = calcularPrecioSuscripcion(tipo)*cantidad
		      - calcularPrecioSuscripcion(tipo)*cantidad*calcularDescuentoCantidad(cantidad)
	return total
  
end

puts calcularTotalPagar("Vamos",11)