class SetDataStructure

  include Enumerable

  def initialize(list = [])
    @set_data = list.dup
  end

  def each
    @set_data.each { |data| yield(data) }
  end

  def size
    @set_data.size
  end

  def add(element)
    if @set_data.include?(element)
      raise "This element is already in the set!"
    else
      @set_data += [element]
    end
  end

  def delete(element)
    @set_data -= [element]
  end

end
