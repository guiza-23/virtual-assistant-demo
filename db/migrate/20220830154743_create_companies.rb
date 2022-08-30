class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.text :description
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
