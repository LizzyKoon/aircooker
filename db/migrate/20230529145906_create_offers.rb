class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :location
      t.text :description
      t.boolean :availability
      t.integer :capacity
      t.string :name
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
