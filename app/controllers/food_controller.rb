class FoodController < ApplicationController

  def index
    @refill = nil
    if Refill.all.length == 0
      @refill = Refill.create(amount: 100)
    else
      @refill = Refill.first
    end
  end

  def feed
    sleep 2;
    @refill = nil
    if Refill.all.length == 0
      @refill = Refill.create(amount: 100)
    else
      @refill = Refill.first
    end
    @refill.feed(50)
    @refill.save
    flash[:green] = "CATS FED"
    redirect_to root_path
  end

  def refill
    if Refill.all.length == 0
      @refill = Refill.create(amount: 100)
    else
      @refill = Refill.first
      @refill.refill_all
      @refill.save
    end
    flash[:red] = "FOOD REFILLED"
    redirect_to root_path
  end
  
  def empty?
    Refill.first.empty?
  end
  
  def full?
    Refill.first.full?
  end
  
  helper_method :empty?
  helper_method :full?
end
