class Fixnum
  def minutes
    self * 60
  end
  
  def hours
    self * 3600
  end
  
  def days
    self * 86400
  end
  
  def months
    self.days * 30
  end
  
  def weeks
    self.days * 7
  end
  
  def years
    self.days * 365
  end
  
  def val?    
    self.zero?? nil : self
  end
  
  # 1 => 1st
  # 2 => 2nd
  # 3 => 3rd
  # ...
  def ordinal
    case self % 100
      when 11..13; "#{self}th"
    else
      case self % 10
        when 1; "#{self}st"
        when 2; "#{self}nd"
        when 3; "#{self}rd"
      else      "#{self}th"
      end
    end
  end
end