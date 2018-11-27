require './app/models/comedian.rb'

Comedian.destroy_all

Comedian.create!(
  [
    {
      name: "Dave Chappelle",
      age: 45,
      city: "Washington, DC",
    },
    {
      name: "Louis CK",
      age: 51,
      city: "Washington, DC",
    },
    {
      name: "Bill Bur",
      age: 50,
      city: "Canton, Massachusett",
    },
    {
      name: "Pete Holmes",
      age: 39,
      city: "Lexington, Massachusetts",
    },
    {
      name: "Hannibal Buress",
      age: 35,
      city: "Chicago, Illinois",
    },
    {
      name: "David Cross",
      age: 54,
      city: "Roswell, Georgia",
    },
    {
      name: "Zach Galifianakis",
      age: 49,
      city: "Wilkesboro, North Carolina",
    },
    {
      name: "John Mulaney",
      age: 36,
      city: "Chicago, Illinois",
    },
    {
      name: "Anthony Jeselnik",
      age: 39,
      city: "Pittsburgh, Pennsylvania",
    },
    {
      name: "Aziz Ansari",
      age: 35,
      city: "Columbia, South Carolina",
    },
    {
      name: "Mike Birbiglia",
      age: 40,
      city: "Shrewsbury, Massachusetts",
    },
    {
      name: "Jerry Seinfeld",
      age: 64,
      city: "Brooklyn, New York"
    },
  ]
)

p "Created #{Comedian.count} comedians"
