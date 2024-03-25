class AddReviewTotalToRestaurant < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :review_total, :float, default: 0
  end
end
