class Object
  def self.[](const) self.const_get( const ) end
  
  def val?    
    self.empty?? nil : self if self.respond_to? :empty?
  end
  
  def / s
    if self.respond_to? :to_s
      File.join self.to_s, s.to_s
    else
      method_missing :/, s
    end
  end
end