class Player
  attr_accessor :name, :life_points

 

  def initialize(name)
    @name = name.to_s
    @life_points = 10 
  end

  def show_state
  	puts "#{name} a #{life_points} points de vie"
  end

  def gets_damage(damage)
    @life_points = life_points-damage
  if @life_points > 0
  	puts "le joueur #{name} a #{life_points} points de vie"
  else @life_points <= 0
    puts "le joueur #{name} a été tué !"
  end
end

  def attacks(player)
      puts "le joueur #{self.name} attaque le joueur #{player.name}"
      damage = player.compute_damage
      puts "il lui inflige #{damage} points de dommage"
      puts "#{player.gets_damage(damage)}"

  end

  def compute_damage
    return rand(1..6)
  end
end