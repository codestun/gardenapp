class Garden < ApplicationRecord
  belongs_to :user # owner of garden
  has_one_attached :photo
  has_many :users, through: :bookings # gardens he rents
end
