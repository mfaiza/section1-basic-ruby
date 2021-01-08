class Introduce
    attr_accessor :name, :age
    def initialize(name, age)
        @name, @age = name, age
    end
end

user = Introduce.new("Faiz",18)
puts user.name
puts user.age