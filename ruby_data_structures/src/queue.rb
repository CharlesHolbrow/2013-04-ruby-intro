require_relative './node.rb'

class Queue

  def initialize
    @head = nil
    @tail = nil
  end

  def length
    node = @tail
    length = 0
    while node do
      length += 1
      node = node.next
    end
    length
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
    @head = nil unless @tail
    value
  end

end
