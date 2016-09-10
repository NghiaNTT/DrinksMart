class CreateDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.float :price
      t.string :description
      t.integer :quantity
      t.float :average
      t.references :category, index: true, foreign_key: true
      t.timestamps
    end
  end
end
