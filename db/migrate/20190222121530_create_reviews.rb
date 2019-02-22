class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :book_id
      t.string :name
      t.string :one_liner
      t.text :positive
      t.text :negative
      t.integer :rating
      

      t.timestamps
    end
  end
end
