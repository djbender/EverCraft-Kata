class Character
  attr_accessor :name, :alignment, :armor_class, :hit_points

  def initialize(name: nil, alignment: nil, armor_class: 10, hit_points: 5)
    self.name = name
    self.alignment = alignment
    self.armor_class = armor_class
    self.hit_points = hit_points
  end
end
