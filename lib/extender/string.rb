class String  
  def slugize
    self.downcase.strip.gsub /[^a-z0-9]+/, '-'
  end
  
  def blank?
    self unless self =~ /^[ \t]*$/
  end
end