class Agent < ActiveRecord::Base
  belongs_to :account
  has_many :schedules
  
  validates :account_id, presence: true 
  validates :remaining_food, presence: true 
  validates :ip, presence: true 
  validates :name, presence: true 
end
