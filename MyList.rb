require_relative 'enumerable'
class MyList
    include Enumerable
    def initialize(*list)
      @list = list
    end
  
    def each
      @list.each { |value| yield value if block_given? }
    end
  end

# Create our list
list = MyList.new(1, 2, 3, 4)
# Test #all?
p list.all? {|e| e < 5} #=>true
p list.all? {|e| e > 5} #=>false
# Test #any?
p list.any? {|e| e == 2} #=> true
p list.any? {|e| e == 5} #=> false
# Test #filter
p list.filter {|e| e.even?} #=> [2, 4]
p list.filter {|e| e.odd?} #=> [1, 3]
