$:.unshift File.expand_path(File.dirname(__FILE__))

classes = [:object, :fixnum, :hash, :string, :array]
methods = lambda {|c|
  Object.const_get(c.capitalize).instance_methods
}

default = classes.inject({}) do |hash, c|
  hash[c] = methods.call(c); hash
end

classes.each do |c|
  require "extender/#{c}"
end

extended = classes.inject({}) do |hash, c|
  hash[c] = methods.call(c) - default[c]; hash
end