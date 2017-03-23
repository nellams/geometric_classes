class Square
  attr_reader :length, :width, :x, :y, :centerpoint, :diameter, :perimeter
  def initialize(length, x = 0, y = 0)
    if @length.class == Float
      @length = length.round(3)
    end
    @length = length
    @width = @length
    @x = x
    @y = y
    @diameter = diameter
  end

  def centerpoint
    @centerpoint = @x, @y
  end

  def diameter
    x = 0
    y = 0
    length = 5
    Math.sqrt(@length**2 + @length**2)
  end

  def perimeter
    @perimeter = @length * 2 + @width * 2
  end

  def area
    @area = @length * @width
  end

  def contains_point?(x,y)
    @half_diameter = @diameter / 2
    if x < @x + @half_diameter && x > @x - @half_diameter && y < @y + @half_diameter && y > @y - @half_diameter
      true
    else
      false
    end
  end
end
