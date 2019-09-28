# Your code here

class DiceRoller

    def initialize(die_count=1, max_pips_per_die=6)
        @die_count = die_count
        @max_pips_per_die = max_pips_per_die
        @set_of_dice = generate_set
    end
    
    def generate_set
        Array.new(@die_count){ Die.new(@max_pips_per_die) }
    end
    
    def dice
        @set_of_dice
    end

end 