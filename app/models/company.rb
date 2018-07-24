class Company < ApplicationRecord
  belongs_to :user
  
  validates :amount, presence: true
  validates :financing_time, presence: true
end
