class Company < ApplicationRecord
  belongs_to :user
  
  validates :name, presence: true
  validates :amount, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :tax_id, presence: true
  validates :entity_type, presence: true
  validates :annual_revenue, presence: true
  validates :financing_time, presence: true
end
