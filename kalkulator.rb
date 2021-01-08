# Operasi Bilangan
def tambah(num1, num2)
  num1.to_f + num2.to_f
end
def kurang(num1,num2)
  num1.to_f - num2.to_f
end
def kali(num1,num2)
  num1.to_f * num2.to_f
end
def bagi(num1,num2)
  num1.to_f / num2.to_f
end
def mod(num1,num2)
  num1.to_f % num2.to_f
end
# Akhir Method Operasi Bilangan
puts "kalkulator sederhana".upcase!
20.times{print "-"}
puts
puts "\nPilih Operasi Bilangan \n
1. Penambahan\n2. Pengurangan\n3. Perkalian\n4. Pembagian\n5. Modulus"
print "Anda Memilih : "
userSelect = gets.chomp

puts "Enter the first number : "
num1 = gets.chomp
puts "Enter the second number : "
num2 = gets.chomp

if userSelect == "1"
  puts "hasil dari #{num1} + #{num2} = #{tambah(num1,num2)}"
elsif userSelect == "2"
  puts "hasil dari #{num1} - #{num2} = #{kurang(num1,num2)}"
elsif userSelect == "3"
  puts "hasil dari #{num1} * #{num2} = #{kali(num1,num2)}"
elsif userSelect == "4"
  puts "hasil dari #{num1} / #{num2} = #{bagi(num1,num2)}"
elsif userSelect == "5"
  puts "hasil dari #{num1} % #{num2} = #{mod(num1,num2)}"
else
  puts "Invalid input"
end
