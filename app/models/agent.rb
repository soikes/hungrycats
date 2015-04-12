class Agent < ActiveRecord::Base
  belongs_to :account
  
  has_many :schedules
  
  attr_accessor :remaining_food, :ip
end
