class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.string :status, default: 'Applied'
      t.references :offer, null: false, foreign_key: true
      t.references :assistant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
