class Queue

  def initialize
    @storage = []
  end

  def push item
    @storage.push item
  end

  def get
    @storage.unshift
  end

end