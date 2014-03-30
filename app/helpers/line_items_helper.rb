module LineItemsHelper
  def find_product(line_item)
    Product.find line_item[:product_id]
  end
end
