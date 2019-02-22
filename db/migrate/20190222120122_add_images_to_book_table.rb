class AddImagesToBookTable < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :cover_image, :string
    add_column :books, :author_image, :string
  end
end
