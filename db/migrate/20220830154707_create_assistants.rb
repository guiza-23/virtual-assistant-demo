class CreateAssistants < ActiveRecord::Migration[7.0]
  def change
    create_table :assistants do |t|
      t.string :cv
      t.string :skills
      t.string :availability
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
