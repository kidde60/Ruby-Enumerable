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