class Player < ApplicationRecord
  MINIMUM_VALUE=0
  validates :first_name,presence:true
  validates :last_name,presence:true
  validates :weight,numericality:{:greater_than=>MINIMUM_VALUE}
  validates :height,numericality:{:greater_than=>MINIMUM_VALUE}
end
