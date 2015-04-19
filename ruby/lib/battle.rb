# Battle
class Battle
  def initialize(attacker:, defender:)
    @attacker = attacker
    @defender = defender
  end

  def fight
    @attacker.attack(@defender)
  end
end
