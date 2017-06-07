contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.keys.each_with_index do |k, idx|
  fields.each_with_index do |field, i|
    contacts[k][field] = contact_data[idx][i]    
  end
end

p contacts