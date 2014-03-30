class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :line_items, :total_price, :price
  end
end
