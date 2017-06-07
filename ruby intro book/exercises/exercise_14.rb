contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

fields = [:email, :address, :phone]

fields.each_with_index do |item, place|
  contacts["Joe Smith"][item] = contact_data[place]
end

p contacts