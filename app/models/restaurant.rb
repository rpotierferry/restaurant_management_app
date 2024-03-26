class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  has_many :reviews, dependent: :destroy

  def update_average_rating!
    reviews_count = self.reviews.count
    return self.update(average_rating: 0) if reviews_count.zero?

    total_rating = self.reviews.sum(:rating).to_f
    average = total_rating / reviews_count
    average_rounded = average.round(2) # Round to 2 decimal places
    self.update(average_rating: average_rounded)
  end
end
