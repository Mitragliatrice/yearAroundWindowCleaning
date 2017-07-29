10.times do |quote|
  Quote.create!(
                  name: "Colton Mathews #{quote}",
                  phone: 5555555555,
                  city: "Bunkerville",
                  email: "test@email.com",
                  body: "tester data",

    )
end

puts "10 quotes created!"