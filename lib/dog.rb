# Add your code here

class Dog
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        @@all.each do |dog| 
            puts dog.name
        end
    end
end

tim = Dog.new('Tim')
tina = Dog.new('Tina')

 p Dog.print_all

