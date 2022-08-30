class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :type, :boolean
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :avatar, :string
  end
end
