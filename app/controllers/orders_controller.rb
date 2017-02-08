class OrdersController < ApplicationController


 def create
    
    user_id = current_user.id
    carted_products = CartedProduct.where(user_id: user_id, status: "carted")

    order = Order.new(
      user_id: current_user.id,
    )

    order.subtotal = order.calculate_subtotal(carted_products)
    order.tax = order.subtotal * 0.09
    order.total = order.subtotal + order.tax
    order.save

# carted_products.update_all(status: "purchased", order_id: order.id)
    carted_products.each do |product|
      product.status = "purchased"
      product.order_id = order.id
      product.save
    end


    if order.save
      # order.calculate_totals(product.price, product.quantity.to_f)
      flash[:success] = "order successfully placed"
      redirect_to "/orders/#{order.id}"
    else
      flash[:warning] = "sorry, something went wrong. order not placed."
    end

  end

  def show
    order_id = params[:id]
    @order = Order.find_by(id: order_id)
  end

end
