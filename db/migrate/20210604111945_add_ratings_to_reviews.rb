class AddRatingsToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :ratings, :float
  end
  end
end
