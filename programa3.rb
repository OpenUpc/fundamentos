def multiplo(a,b)
	c = a % b
	if c == 0
		return "Multiplo"
	else
		return "No es multiplo"
	end
end

def multiplo2(a, b)
	if  a % b == 0
		"#{a} es múltiplo de #{b}"
	else
		"#{a} no es múltiplo de #{b}"
	end
end

puts multiplo(2,4)
puts multiplo2(2,4)

