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


class Queue

  def initialize
    @head = nil
    @tail = nil
  end

  def push value
    new_node = Node.new(value)
    if @head then
      @head.next = new_node
      @head = new_node
    else
      @head = new_node
      @tail = new_node
    end
    value
  end

  def get
    return unless @tail
    value = @tail.value
    @tail = @tail.next
    value
  end

end
