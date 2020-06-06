def esPar1(numero)
  if numero % 2 == 0
  	"Es par"
  else
    "Es impar"
  end
end

def esPar2(numero)
   if numero % 2 == 0
     return "Es par" 
   else
     return "Es impar"  	
   end
end

puts esPar1(8)
puts esPar1(7)

puts esPar2(1)
puts esPar2(10)

