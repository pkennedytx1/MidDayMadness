class BrewMethods 
    attr_reader :brew_id
    attr_accessor :brew_name, :difficulty, :equipment

    @@all = []

    def initialize(brew_id, brew_name)
        @brew_id = brew_id
        @brew_name = brew_name
        @equipment = []

        @@all << self
    end

    def update_brew_difficulty(number)
        if (1..5).include? number 
            @difficulty = number
        else
            puts 'the number must be between 1 - 5'
        end
    end

    def add_required_equipment(item)
        if @equipment.include? item
            puts 'equipment already logged'
        else
            @equipment << item
        end
    end

    def self.puts_all_brew_methods
        all.map do | method |
            puts method.brew_name
        end
    end

    def self.all 
        @@all
    end
end


