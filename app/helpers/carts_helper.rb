module CartsHelper
  def current_cart
    unless session[:cart]
      session[:cart] = Array.new
    end
    session[:cart]
  end
end
