class String
  def tokenize
    self.downcase.split(/\W+/)
  end
end