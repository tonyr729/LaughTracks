require './app/models/comedian.rb'

Comedian.destroy_all

Comedian.create!(
  [
    {
      name: "Dave Chappelle",
      age: 45,
      city: "New York City, NY",
    },
    {
      name: "Louis CK",
      age: 51,
      city: "New York City, NY",
    },
  ]
)

p "Created #{Comedian.count} movies"
