class Pokemon < Animal

  def initialize(hp=420)
    @hp = hp
  end

  def hp
    @hp
  end
  def assess_damage(amount_of_damage, type)
      if type == resistance
        not_very_effective(amount_of_damage)
      else
        take_damage(amount_of_damage)
      end
  end

  def take_damage(amount_of_damage)
    @hp -= amount_of_damage
  end

  def critical_hit!(amount_of_damage)
    take_damage(amount_of_damage*2)
  end

  def not_very_effective(amount_of_damage)
    take_damage(amount_of_damage/2)
  end
end
