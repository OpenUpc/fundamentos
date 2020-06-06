def calcularBono(nacionalidad)
    if nacionalidad == "E"
    	return 500
    else
        return 0
    end
end

def calcularSueldo(edad, nacionalidad)
	sueldoFijo = 2500
    bono = calcularBono(nacionalidad)
    aumento = calcularAumentoPorEdad(edad)
    suma = sueldoFijo + bono + aumento
    return suma
end

def calcularAumentoPorEdad(edad)
	aumento =0
    if edad>=15 && edad<=20
       aumento = 1400
    elsif edad>=21 && edad<=25
       	aumento = 1500
    elsif edad>=26 && edad<=30
    	aumento = 1200
    else
    	aumento =800       		
    end
    return aumento
end

puts calcularSueldo(30, "E")

#print "Ingrese edad: "
#edad = gets.chomp.to_i
#puts
#print "Ingrese nacionalidad:"
#nac = gets.chomp.to_s
#sueldo = calcularSueldo(edad, nac)
#print "Sueldo: #{sueldo}"


