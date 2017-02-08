class ProductsController < ApplicationController



  def index
    @products = Product.all
    sort_attr = params[:sort]
    sort_order = params[:sort_order]

    if sort_attr
        @products = Product.all.order(params[:sort] => params[:sort_order])
      
    end

    if params[:discount]
      @products = Product.where("price < ?", 2)
    elsif params[:category]
      @products = Category.find_by(name: params[:category]).products
       
    end
  
  end

  def search
    search_term = params[:search]
    @products = Product.where("name LIKE ?", "%#{search_term}%")
    render :index
  end

  def new
    render "new.html.erb"
  end

  def create
    product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image: params[:image])
    flash[:success] = "product successfuly created"
    redirect_to "/products/#{product.id}"
  end

  def show
    productId = params[:id]
    @product = Product.find_by(id: productId)
    if productId == "random"
      @product = Product.all.sample
    end
    @supplier = @product.supplier
    @images = @product.images
    render "show.html.erb"
  end

  def edit
    productId = params[:id]
    @product = Product.find_by(id: productId)
    render "edit.html.erb"
  end

  def update
    productId = params[:id]
    product = Product.find_by(id: productId)
    product.name = params[:name]
    product.save
    flash[:success] = "product successfuly updated"
    redirect_to "/products/#{productId}"
  end

  def destroy
    productId = params[:id]
    product = Product.find_by(id: productId)
    product.destroy
    flash[:warning] = "product successfuly destroyed"
    redirect_to "/products"
  end



end
