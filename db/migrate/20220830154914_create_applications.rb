class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.string :status
      t.references :offers, null: false, foreign_key: true
      t.references :assistants, null: false, foreign_key: true

      t.timestamps
    end
  end
end
