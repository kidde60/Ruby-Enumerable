module Enumerable
    def all?
      each { |el| result = false unless yield el }
      true
    end
  
    def any?
      each { |el| result = true if yield el }
      false
    end
  
    def filter?
      arr = []
      each { |el| result.push(el) if yield el }
      arr
    end
  end
  