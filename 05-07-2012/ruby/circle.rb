class Circle
  attr_reader :x, :y, :radius
  def initialize(x, y, radius)
    @x, @y, @radius = x, y, radius
  end

  def self.unit
    new(0, 0, 1)
  end

  def area
    Math::PI * @radius ** 2
  end

  def diameter
    @radius * 2
  end

  def circumference
    2 * Math.PI * radius
  end

  def intersects?(circle)
    Math.sqrt((@x - circle.x) ** 2 + (@y - circle.y) ** 2) <= @radius + circle.radius
  end
end
