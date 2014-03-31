module ProductsHelper
  def product_path_by_name(name)
    product = Product.find_by_name(name)
    catalog_product_path(product[:catalog_id], product[:id])
  end
end
