class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.create(params.require(:order).permit(:first_name, :last_name, :email, :phone, :address))
    session[:cart].each do |line_item|
      product = Product.find line_item[:product_id]
      LineItem.create quantity: line_item[:quantity], price: product[:price],
                      product_id: line_item[:product_id], order_id: @order[:id]
      product.update_attribute(:quantity, product.quantity - line_item[:quantity])
    end
    session[:cart] = []
  end
end
