class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  has_many :companies
  
  def admin?
    role == "admin"
  end
  
  def regular?
    role == "regular"
  end
  
  def guest?
    role == "guest"
  end
  
  validates :amount, presence: true
  validates :company_name, presence: true, length: {maximum: 50}
  validates :company_zip, presence: true, length: {maximum: 5}
  validates :name, presence: true, length: {maximum: 50}
  
  def generate_pin
    self.pin = SecureRandom.hex(2)
    self.verified_phone = false
    save
  end

  def send_pin
    @client = Twilio::REST::Client.new
    @client.messages.create(
      from: '+14242342810',
      to: self.phone_number,
      body: "Your pin is #{self.pin}"
    )
  end

  def verify_pin(entered_pin)
    update(verified_phone: true) if self.pin == entered_pin
  end
   
end
