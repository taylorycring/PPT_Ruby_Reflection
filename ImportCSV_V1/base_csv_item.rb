class BaseCSVItem

  def initialize
    @data=Hash.new
  end



  def setValue(field,value)
    @data[field]=value
  end

  def getValue(field)
    return @data["#{field}"]       #QQ
  end

  def method_missing(name, *args, &block)
    return getValue(name)
  end
end