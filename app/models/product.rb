class Product < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :categorized_products
  has_many :categories, through: :categorized_products

  

  def sale_message
    message = "Everyday Value!!"
    if price.to_i < 2
      message = "Discount Item!"
    end
    return message
  end

  def sale_class

  end

  def tax
    tax = price.to_i * 0.09
    return tax
  end

  def total
    total = price.to_i + (price.to_i * 0.09)
    return total
  end

end
