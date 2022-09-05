class CreateChatroms < ActiveRecord::Migration[7.0]
  def change
    create_table :chatroms do |t|
      t.string :name

      t.timestamps
    end
  end
end
