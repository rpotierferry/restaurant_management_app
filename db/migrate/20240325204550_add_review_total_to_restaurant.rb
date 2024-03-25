class AddReviewTotalToRestaurant < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :average_rating, :float, default: 0
  end
end
