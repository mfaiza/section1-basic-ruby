dial_book = {
    'bogor' => "257",
    "cisarua" => "213",
    "tangerang" => "678",
    "jakarta" => "666",
    "puncak" => "942",
    "cicurug" => "895",
    "megamendung" => "498",
    "bekasi" => "489",
    "banten" => "196",
    "pasir muncang" => "397"
}
# p dial_book.keys

# check 
def check(city, somehash)
    if somehash.include?(city)
        return true
    end
end

# get city names
def get_city_names(somehash)
    puts "Pilih kota yang ingin anda ketahui kode nya? "
    somehash.each { |kota, kode| puts kota }
end

# get area code
def get_area_code(somehash, key)
    code = somehash.select { |city, value| city == key}
    return code["#{key}"]
end

# Execution flow
loop do
    puts "Apakah anda ingin melihat data area? (Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    get_city_names(dial_book)
    puts "Silahkan pilih kota : "
    city = gets.chomp
    code = get_area_code(dial_book, city)
    if check(city, dial_book)
        puts "Kode are untuk kota #{city} adalah #{code}}"
    else
        puts "Kota yang anda masukan tidak valid!"
    end
end