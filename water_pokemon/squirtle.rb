class Squirtle < Pokemon
include Water

  def initialize(hp = 500, is_fat)
    super(hp, is_fat)
    @is_cute = true
  end


  def watergun(pokemon_to_hit)
    pokemon_to_hit.assess_damage(500, type, pokemon_to_hitruby)
  end




end
