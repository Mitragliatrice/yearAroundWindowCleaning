10.times do |quote|
  Quote.create!(
                  name: "Colton Mathews #{quote}",
                  phone: 5555555555,
                  city: "Bunkerville",
                  email: "test@email.com",
                  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam facilisis vulputate neque, eu fringilla odio imperdiet id. Phasellus tempus neque et fringilla scelerisque. Pellentesque at pellentesque lacus. Sed suscipit ex ut diam venenatis pellentesque.",

    )
end

puts "10 quotes created!"