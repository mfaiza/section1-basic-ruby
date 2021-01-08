class User
    attr_accessor :name, :email
    def initialize(name, email)
      @name, @email = name, email
    end
    def run
        puts "Hy, I'm wanna run"
    end
    def intro
        puts "Hei, my name is #{@name}, you can contact me to my email: #{@email}"
    end
    def self.identity_yourself
        puts "hey im class method"
    end
end
user = User.new("faiz","faiz@example.com")
user.intro
user.run
User.identity_yourself
    