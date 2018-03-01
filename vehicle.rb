class Vehicle

  attr_reader :id
  attr_accessor :x_pos, :y_pos

  def initialize(id)
    @id = id
    @x_pos, @y_pos = 0
  end


end