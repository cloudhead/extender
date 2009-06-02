class Hash
  def symbolize
    inject({}) do |hash, (key, value)|
      hash[(key.to_sym rescue key)] = value; hash
    end
  end
  alias sym_keys symbolize
end