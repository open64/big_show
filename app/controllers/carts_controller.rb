class CartsController < ApplicationController
  def show
    @cart = current_cart
  end

  def create
    @cart = Cart.create
  end

  def destroy
    @cart.destroy
  end
end