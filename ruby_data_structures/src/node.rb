class Node

  attr_accessor :next, :prev, :value

  def initialize value
    @value = value
  end

  def to_s
    @value
  end

  def inspect
    'Node: ' << @value
  end

end
