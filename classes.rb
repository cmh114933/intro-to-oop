class Character
  @@total_characters = 0
  def initialize(name)
    @name = name
    @health_points = 10
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end
  
  def health_points
    health_points
  end

  def attack(character)
    character.minus_hp
  end

  def minus_hp
    @health_points -= 1
  end

  def increase_hp
    @health_points += 1
  end
end


def Player < Character
  def ask_for_quest(character)
    character.give_quest
  end
end

def NPC < Character
  def minus_hp
    @health_points -= 0
  end

  def give_quest
    p "Please help me kill some goblins!"
  end
end