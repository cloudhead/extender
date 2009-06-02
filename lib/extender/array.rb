class Array
  def value
    unless self.size > 1
      self[ 0 ]
    else
      raise StandardError, 'array has more than one value'
    end
  end
  alias only value
end