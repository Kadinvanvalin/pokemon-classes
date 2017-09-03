class Pokemon < Animal
  attr_accessor :move1, :move2

  def initialize(hp=420, is_fat)
    super()
    @hp = hp
    @is_fat = is_fat
  end

  def hp
    @hp
  end

  def hp=(hp)
    @hp = hp
  end

  def tackle(pokemon_to_hit)
    assess_damage(50, "normal", pokemon_to_hit)
  end

  def growl
    p "grrrrr"
  end
  def assess_damage(amount_of_damage, type, pokemon_to_hit)
      if type == pokemon_to_hit.resistance
        not_very_effective(amount_of_damage, pokemon_to_hit)
      elsif type == pokemon_to_hit.weakness
        critical_hit(amount_of_damage, pokemon_to_hit)
      else
        take_damage(amount_of_damage, pokemon_to_hit)
      end
  end

  def take_damage(amount_of_damage, pokemon_to_hit)
    pokemon_to_hit.hp -= amount_of_damage
  end


  def critical_hit(amount_of_damage, pokemon_to_hit)
    pokemon_to_hit.take_damage(amount_of_damage*2)
  end

  def not_very_effective(amount_of_damage, pokemon_to_hit)
    pokemon_to_hit.take_damage(amount_of_damage/2)
  end
end
