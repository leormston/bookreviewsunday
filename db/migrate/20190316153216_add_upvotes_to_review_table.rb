class AddUpvotesToReviewTable < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :upvotes, :integer
  end
end
