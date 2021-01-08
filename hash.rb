sampleHash = {
    name: "Mochamad Faiz Alamsyah",
    :class => "RPL XII-3",
    'school' => "SMK WIKRAMA BOGOR",
    friend: 8
}

# # p sampleHash[:name]
# # p sampleHash[:class]
# # p sampleHash['school']
# sampleHash[:age] = 18
# p sampleHash


# # sampleHash.each {|key, value| puts "Key is #{key} and the Value is #{value}"}

sampleHash.select {|key, value| sampleHash.delete(key) if key == :friend}
p sampleHash
