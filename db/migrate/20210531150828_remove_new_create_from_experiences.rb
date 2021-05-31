class RemoveNewCreateFromExperiences < ActiveRecord::Migration[6.0]
  def change
    remove_column :experiences, :new, :string
    remove_column :experiences, :create, :string
  end
end
