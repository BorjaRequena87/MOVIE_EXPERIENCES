class AddTelephoneEmailToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :mail, :string
    add_column :users, :telepohone, :string
  end
end
