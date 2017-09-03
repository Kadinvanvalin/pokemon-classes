module Water

  def resistance
    "fire"
  end

  def type
    "water"
  end

  def weakness
    nil
  end

  def watergun(pokemon_to_hit)
    pokemon_to_hit.assess_damage(500, type)
  end
end
