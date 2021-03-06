# frozen_string_literal: true

class Triangle
  def initialize(sides_values)
    @sides_values = sides_values
    @a, @b, @c = @sides_values
  end

  def triangle_inequality?
    sides_non_zero? &&
      @a + @b > @c &&
      @b + @c > @a &&
      @a + @c > @b
  end

  def degenerate?
    sides_non_zero? &&
      @a + @b == @c ||
      @b + @c == @a ||
      @a + @c == @b
  end

  def equilateral?
    matching_sides == 3 if triangle_inequality?
  end

  def isosceles?
    matching_sides >= 2 if triangle_inequality?
  end

  def scalene?
    matching_sides.zero? if triangle_inequality?
  end

  private

  def matching_sides
    case @sides_values.uniq.length
    when 1 then 3
    when 2 then 2
    else
      0
    end
  end

  def sides_non_zero?
    @sides_values.all? { |side| side != 0 }
  end
end
