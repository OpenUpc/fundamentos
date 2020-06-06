def calcularMontoVenta(tipo, cantidad)  
    p = calcularPrecio(tipo)
    return (p*cantidad)
end

def calcularPrecio(tipo)
	case tipo
	    when "P"
	    	 precio = 20.5
	    when "C"
	    	 precio =19.4
	    when "L"
	    	 precio =32.3
	    when "A"
	    	  precio =16.5
	    when "M"
	    	  precio =19.8
	    else
	    	 precio = 0
	  end # fin del case
  return precio
end

puts calcularMontoVenta("L", 10)
