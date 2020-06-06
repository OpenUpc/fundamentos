def programa1(a, b)
	if a > b
		 "A es mayor que B"
	elsif a < b
		 "A es menor que B"
	elsif a == b
		 "A es igual que B"
	else
		 "Ninguno"
	end
end

def programa2(a, b)
	cadena = nil
	if a > b
		 cadena = "A es mayor que B"
	elsif a < b
		 cadena ="A es menor que B"
	elsif a == b
		 cadena ="A es igual que B"
	else
		 cadena ="Ninguno"
	end
	return cadena
end

puts programa1(10,4)
puts programa2(10,4)
