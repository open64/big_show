class LineItemsController < ApplicationController
  def create
    line_item = find_line_item
    if line_item
      line_item[:quantity] += 1
    else
      line_item = Hash.new
      line_item[:product_id] = params[:product_id]
      line_item[:quantity] = 1
      session[:cart].push line_item
    end
      redirect_to carts_show_path
  end

  def destroy
    line_item = find_line_item
    if line_item
      if line_item[:quantity] > 1
        line_item[:quantity] -= 1
      else
        session[:cart].delete_at session[:cart].index(line_item)
      end
    end
    redirect_to carts_show_path
  end

  private

  def find_line_item
    current_cart.each do |item|
      if item[:product_id] == params[:product_id]
        return item
      end
    end
    false
  end
end
