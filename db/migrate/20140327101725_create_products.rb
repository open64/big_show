class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :catalog
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :quantity
      t.string :image

      t.timestamps
    end
  end
end
