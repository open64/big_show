class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    find_value = params.require(:search).permit(:val)[:val]
    product_name = (Product.all.map {|h| h[:name]}).sort
    @result = []
    find_value = /[\w]*#{find_value}[\w]*/i
    product_name.each do |name|
      if find_value.match name
        @result.push name
      end
    end
  end
end
