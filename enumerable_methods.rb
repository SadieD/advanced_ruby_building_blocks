#enumerable methods
module Enumerable

  def my_each
    if block_given?
      i = 0
      while i < self.size
        yield(self[i])
        i+=1
      end
      self
    end
  end


  def my_each_with_index
    if block_given?
      i = 0
      self.my_each do |x|
        yield(x,i)
        i+=1
      end
      self
    end
  end
  
  def my_select
    if block_given?
      a = []
      self.my_each do |x|
        if yield(x)
          a << x
        end
      end
      a
    end
  end

  def my_all?
    if block_given?
      self.my_each do |x|
        if !yield(x)
          return false
        end
      end
      true
    end
  end


  def my_any?
    if block_given?
      self.my_each do |x|
        if yield(x)
          return true
        end
      end
      false
    end
  end


  def my_none?
    if block_given?
      self.my_each do |x|
        if yield(x)
          return false
        end
      end
      true
    end
  end


  def my_count
    i = 0
    self.my_each do |x|
      i+=1
    end
    i
  end


  def my_map
    if block_given?
      a = []
      self.my_each do |x|
          a << yield(x)
      end
      a
    end
  end


  def my_inject
    if block_given?
      i = 0
      a = self[i]
      while i < self.size - 1
        a
        a = yield(a, self[i + 1])
        i+=1
      end
      a
    end
  end
  
end
