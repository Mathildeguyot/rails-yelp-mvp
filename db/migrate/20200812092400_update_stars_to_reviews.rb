class UpdateStarsToReviews < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :stars, :rating
  end
end
