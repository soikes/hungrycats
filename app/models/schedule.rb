class Schedule < ActiveRecord::Base
  belongs_to :agent
  
  attr_accessor :time, :frequency, :feed_amount
end
