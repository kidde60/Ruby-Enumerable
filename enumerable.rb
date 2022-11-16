module Enumerable
  def all?
    res = true
    each { |e| res = false unless yield e }
    res
  end

  def any?
    res = false
    each { |e| res = true if yield e }
    res
  end

  def filter?
    arr = []
    each { |e| arr.push(e) if yield e }
    arr
  end
end
