class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :score, :integer, default: 0, null: false
    add_column :users, :bio, :text
    add_column :users, :avatar, :string
    add_column :users, :photo, :string
  end
end
