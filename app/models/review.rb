class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, in: (0..5) }

  after_commit :update_restaurant_average_rating

  private

  def update_restaurant_average_rating
    self.restaurant.update_average_rating!
  end

end
