require 'faker'

user1 = User.create!(name: "Jason Allen", password: "1234", email: "a@b.com")

# create Users
19.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )
end

# create Locations
20.times do
  Location.create!(
    name: Faker::Address.city,
    note: Faker::Lorem.sentences(2, true).flatten.join(" "),
    zip: Faker::Address.zip,
    user: User.all.sample
    )
end
