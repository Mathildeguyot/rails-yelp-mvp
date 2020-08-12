class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY, message: "%{value} is not a valid category"}
end
