class AddLeftToBooksTable < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :left, :boolean
  end
end
