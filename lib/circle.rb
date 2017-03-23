class Circle
  attr_reader :centerpoint, :x, :y, :radius, :diameter
  def initialize(radius, x = 0, y = 0)
    if radius.class == Float
    @radius = ('%.2f' % [radius]).to_f
    end
    @radius = radius
    @x = x
    @y = y
    @pi = 3.1416
  end

  def centerpoint
    @centerpoint = x,y
  end

  def diameter
    @radius * 2
  end

  def area
    @area = ('%.2f' % [@pi * (@radius)**2]).to_f
  end

  def perimeter
    @perimeter = 2 * @pi * @radius
  end
end
