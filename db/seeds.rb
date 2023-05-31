require "faker"
puts 'Cleaning database...'
Restaurant.destroy_all
puts 'Starting to create restaurants...'
5.times do
  restaurant = Restaurant.new({
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: %w(chinese italian japanese french belgian).sample
  })
  puts "#{restaurant.name} created!"
end
puts 'Finished!'
