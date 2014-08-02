class Numeric
  def to_emoji
    case self
    when -5.0..-1.0 then ":scream:"
    when -1.0..2.0  then ":expressionless:"
    when 2.0..5.0   then ":smile:"
    else
      self
    end
  end
  
  def to_rating
    case self
    when -5.0..-3.0 then 1
    when -3.0..-1.0 then 2
    when -1.0..1.0  then 3
    when 1.0..3.0   then 4
    when 3.0..5.0   then 5
    else
      self
    end
  end
end