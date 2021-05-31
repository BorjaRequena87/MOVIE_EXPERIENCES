class AddAttributesToExperience < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :title, :string
    add_column :experiences, :address, :string
    add_column :experiences, :description, :text
    add_column :experiences, :price, :integer
    add_column :experiences, :rating, :float
    add_column :experiences, :user_id, :integer
  end
end
