class Charizard < Pokemon
include Fire
  def fireblast(pokemon_to_hit)
    pokemon_to_hit.assess_damage(500, type, pokemon_to_hit)
  end

end
