require 'bundler'
# Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1= Player.new("josiane")
player2= Player.new("josé")


puts" Voici l'état de chaque joueur"
puts
player1.show_state
player2.show_state
puts
puts "appuie sur entree pour la suite du programme"
gets


while player1.life_points >= 0 || player2.life_points >= 0

    puts "Passons à la phase d'attaque :"
    puts player1.attack(player2)
    puts player2.attack(player1)

    puts" Voici l'état de chaque joueur"
    puts player1.show_state
    puts player2.show_state

end