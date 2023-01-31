# require "pry"

class Player

    attr_accessor :name, :life_points

    @@_player = 0

    def initialize(name)

        @name = name
        @life_points = 10

    end

    def show_state

    puts "#{name}, à #{life_points} points de vies"

    end

    def gets_damage(damage_receveid)
        @life_points = life_points - damage_receveid
        puts "#{@name} à perdu #{damage_receveid} points"
        if @life_points <= 0
            puts "Le joueur #{@name} à été tué"
            exit 
        end
    end

    def attack(rival)
    puts "Le joueur #{@name} attaque #{rival.name}"
    damage_receveid = compute_damage
    rival.gets_damage(damage_receveid)
    puts "#{@name} inflige des patates #{damage_receveid} damage to #{rival.name}"
    end

    def compute_damage
        return rand (1..6)
    end

end

# binding.pry