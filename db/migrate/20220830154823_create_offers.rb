class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.text :description
      t.boolean :status
      t.string :tag
      t.references :companies, null: false, foreign_key: true

      t.timestamps
    end
  end
end
