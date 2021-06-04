class AddQuoteToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :quote, :string
  end
end
