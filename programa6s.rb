def calcularPrecioSuscripcion(tipo)
	case tipo
		when "Vamos"
			precio = 150.0
		when "Cosas"
			precio = 170.0
		when "Automas"
			precio = 250.0
		when "Construye"
		    precio = 200.0	
		else
		    precio = 0	
		end
	return precio
end

def calcularDescuentoCantidad(cantidad)
	if cantidad >= 1 && cantidad <= 10
		descuento = 0
	elsif cantidad >= 11 && cantidad <= 100
		descuento = 15
	elsif cantidad >= 101 && cantidad <= 200
		descuento = 21
	else
		descuento = 25
	end
	return descuento
end


def calcularTotalPagar(tipo,cantidad)
   precioSuscripcionSinDescuento = calcularPrecioSuscripcion(tipo) * cantidad
   precioDescuentoTotal = precioSuscripcionSinDescuento*calcularDescuentoCantidad(cantidad)/100.0
   totalaPagar = precioSuscripcionSinDescuento - precioDescuentoTotal
   return totalaPagar                        
end

#--- zona de test ----
puts print "El precio por la suscripcion es : ", calcularPrecioSuscripcion("Vamos")
puts print print "El porcentaje de descuento es: ", calcularDescuentoCantidad(15), "%"
puts print "El monto a pagar es: ", calcularTotalPagar("Vamos",15)

