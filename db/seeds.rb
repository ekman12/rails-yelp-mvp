# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

30.times do
  Restaurant.create(
    name: Faker::TvShows::Simpsons.location,
    address: Faker::Address.street_address,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample(1)[0],
    phone_number: Faker::PhoneNumber.phone_number
  )
end


  # validates :name, presence: true
  # validates :address, presence: true
  # validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
