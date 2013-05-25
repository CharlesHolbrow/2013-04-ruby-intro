class Node

  attr_accessor :next
  attr_accessor :prev
  attr_accessor :value

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
