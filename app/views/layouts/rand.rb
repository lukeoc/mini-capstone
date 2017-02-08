all_products = [{"key" => "value1", "id" => "1"}, {"key" => "value2", "id" => "2"}, {"key" => "value3", "id" => "3"}, {"key" => "value4", "id" => "4"}]


def random_product_id
  array = []
   all_products.each do |product|
     array << product.id
   end
   puts array
end

