class Location < ApplicationRecord
  has_many :stores 
  has_many :profiles

  validates :city, :state, :country, :post_code, presence: true

  def full_address
    "#{city}, #{state}, #{country}, #{post_code}"
  end

end
