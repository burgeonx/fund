class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :companies
  
  validates :name, presence: true, length: {maximum: 50}
  validates :company_name, presence: true, length: {maximum: 50}
  validates :company_zip, presence: true, length: {maximum: 5}
end
