class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  
  def calculate_subtotal(products)
   subtotal = 0
   products.each do |product|
     subtotal = product.product.price * product.quantity + subtotal
   end
   return subtotal
 end
 
end
