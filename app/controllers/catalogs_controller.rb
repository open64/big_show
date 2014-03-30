class CatalogsController < ApplicationController
  def index
    @catalogs = Catalog.all
  end

  def show
    @catalog = Catalog.find params[:id]
    @products = @catalog.products
  end
end
