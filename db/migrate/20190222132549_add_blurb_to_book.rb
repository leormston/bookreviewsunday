class AddBlurbToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :blurb, :string
    add_column :books, :release_date, :string
  end
end
