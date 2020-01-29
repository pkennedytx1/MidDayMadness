require 'pry'

class BrewMethods
    attr_accessor :brew_name, :brew_dif, :brew_equip, :brew_id
   
    @@all = []

    def initialize(brew_id, brew_name)
        @brew_id = brew_id
        @brew_name = brew_name
        @brew_equip = []
        # binding.pry
        @@all << self
    end

    def update_brew_difficulty(number)
        if number.between?(1,5)
            @brew_dif = number
        else 
            puts "learn to count!"
        end 
        # binding.pry
    end
    
    def add_required_equipment(item)
        if !@brew_equip.include?(item)
            @brew_equip << item
        else
            puts "Item already here"
        end
    end


    def self.all
        @@all
    end

    def self.puts_all_brew_methods
        @@all.each do |x| 
            puts x.brew_name
        end
    end

    
end