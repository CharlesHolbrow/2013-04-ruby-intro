require './src/queue.rb'

describe Queue do

  before(:each) do
    @queue = Queue.new
  end

  it("initializes to empty") do
    @queue.length.should == 0
  end

  describe "#length" do
    it("should return the number of added values") do
      @queue.length.should == 0
      @queue.push "First!"
      @queue.length.should == 1
      @queue.push "Second!"
      @queue.length.should == 2
    end

    it("Should never go below 0") do
      @queue.push(Queue)
      @queue.get
      @queue.length.should == 0
      @queue.get
      @queue.length.should == 0
    end
  end

  describe "#push" do
    it("should return the values pushed") do
      val = 'A really great string'
      @queue.push(val).should == val
    end
  end

  describe "#get" do
    it("should return nill when queue is empty") do
      @queue.get().should == nil
    end

    it("should return pushed values in FIFO order") do
      @queue.push '1'
      @queue.push 'two'
      @queue.push 3
      @queue.get().should == '1'
      @queue.get().should == 'two'
      @queue.get().should == 3
      @queue.get().should == nil
      @queue.push('44')
      @queue.get().should == '44'
    end
  end

end