class AddReferencesForReviewsInRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_reference(:reviews, :restaurant)
  end
end
