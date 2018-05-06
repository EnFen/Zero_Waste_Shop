class Profile < ApplicationRecord
  belongs_to :location
  belongs_to :user, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end

end
