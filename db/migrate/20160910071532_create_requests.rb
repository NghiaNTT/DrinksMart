class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :image
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
