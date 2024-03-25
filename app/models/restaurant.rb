class Restaurant < ApplicationRecord
  @categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: @categories }

  has_many :reviews, dependent: :destroy
end
