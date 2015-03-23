class Refill < ActiveRecord::Base
  def refill_some(amt)
    self.amount += amt
  end

  def refill_all
    self.amount = 100
  end

  def feed(scoop)
    current_amount = self.amount
    if current_amount > 0 && current_amount - scoop >= 0
      
      # turn the motor!
      
      
      self.amount -= scoop
    else
      # do nothing!
      self.amount = 0
    end
  end
  
  def empty?
    self.amount == 0
  end
  
  def full?
    self.amount == 100
  end
end
