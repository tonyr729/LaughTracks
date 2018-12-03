require './app/models/comedian.rb'
require './app/models/special.rb'

Comedian.destroy_all

Comedian.create!(
  [
    {
      name: "Dave Chappelle",
      age: 45,
      city: "Washington, DC",
      img: "https://s3.amazonaws.com/laugh-track-comedians/dave-crop.jpg"
    },
    {
      name: "Louis CK",
      age: 51,
      city: "Washington, DC",
      img: "https://s3.amazonaws.com/laugh-track-comedians/louis-crop.jpg"
    },
    {
      name: "Bill Bur",
      age: 50,
      city: "Canton, Massachusett",
      img: "https://s3.amazonaws.com/laugh-track-comedians/bill-crop.jpg"
    },
    {
      name: "Pete Holmes",
      age: 39,
      city: "Lexington, Massachusetts",
      img: "https://s3.amazonaws.com/laugh-track-comedians/pete-crop.jpg"
    },
    {
      name: "Hannibal Buress",
      age: 35,
      city: "Chicago, Illinois",
      img: "https://s3.amazonaws.com/laugh-track-comedians/hannibal-crop.jpg"
    },
    {
      name: "David Cross",
      age: 54,
      city: "Roswell, Georgia",
      img: "https://s3.amazonaws.com/laugh-track-comedians/david-crop.jpg"
    },
    {
      name: "Zach Galifianakis",
      age: 49,
      city: "Wilkesboro, North Carolina",
      img: "https://s3.amazonaws.com/laugh-track-comedians/zach-crop.jpg"
    },
    {
      name: "John Mulaney",
      age: 36,
      city: "Chicago, Illinois",
      img: "https://s3.amazonaws.com/laugh-track-comedians/john-crop.jpg"
    },
    {
      name: "Anthony Jeselnik",
      age: 39,
      city: "Pittsburgh, Pennsylvania",
      img: "https://s3.amazonaws.com/laugh-track-comedians/anthony-crop.jpg"
    },
    {
      name: "Aziz Ansari",
      age: 35,
      city: "Columbia, South Carolina",
      img: "https://s3.amazonaws.com/laugh-track-comedians/aziz-crop.jpg"
    },
    {
      name: "Mike Birbiglia",
      age: 40,
      city: "Shrewsbury, Massachusetts",
      img: "https://s3.amazonaws.com/laugh-track-comedians/mike-crop.jpg"
    },
    {
      name: "Jerry Seinfeld",
      age: 64,
      city: "Brooklyn, New York",
      img: "https://s3.amazonaws.com/laugh-track-comedians/jerry-crop.jpg"
    },
  ]
)

p "Created #{Comedian.count} comedians"

Special.destroy_all


dave = Comedian.find_by(name: "Dave Chappelle")
dave.specials.create(
  name: "Dave Chappelle: Equanimity",
  image_url: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg",
  run_time: 60
)
dave.specials.create(
  name: "Dave Chappelle: The Bird Revelation",
  image_url: "https://m.media-amazon.com/images/M/MV5BNGYzOTE0YzEtMjc5NC00MTg2LTk2MDAtMzJlMjM1NTU1MjcwXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg",
  run_time: 49
)
dave.specials.create(
  name: "Deep in the Heart of Texas: Dave Chappelle Live at Austin City Limits",
  image_url: "https://m.media-amazon.com/images/M/MV5BODA1MDE3ZWYtMTliYi00YTc5LTk3MjQtZjY2YTlhMDQ3Y2Y3XkEyXkFqcGdeQXVyNTI3NjIyMjI@._V1_.jpg",
  run_time: 66
)

louis = Comedian.find_by(name: "Louis CK")
louis.specials.create(
  name: "Louis C.K. 2017",
  image_url: "https://m.media-amazon.com/images/M/MV5BOGYwMmVlMWUtZDE2My00MzMyLTk5MTQtZDdmM2U5YWQwZjM1XkEyXkFqcGdeQXVyMjExNDAyOTU@._V1_.jpg",
  run_time: 74
)
louis.specials.create(
  name: "Louis C.K.: Live at the Comedy Store",
  image_url: "https://m.media-amazon.com/images/M/MV5BODJlMmIyNjEtZDQ0ZS00MGIyLWEyZmYtOTQyYTQyMWJkODhmXkEyXkFqcGdeQXVyMjQ0ODQ0MzQ@._V1_SY1000_CR0,0,666,1000_AL_.jpg",
  run_time: 66
)
louis.specials.create(
  name: "Louis C.K. Oh My God",
  image_url: "https://m.media-amazon.com/images/M/MV5BMjQ4NjQwOTYzNl5BMl5BanBnXkFtZTcwNjU2NjczOQ@@._V1_.jpg",
  run_time: 58
)

bill = Comedian.find_by(name: "Bill Bur")
bill.specials.create(
  name: "Bill Burr: Walk Your Way Out",
  image_url: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_.jpg",
  run_time: 77
)
bill.specials.create(
  name: "Bill Burr: I'm Sorry You Feel That Way",
  image_url: "https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_SY1000_SX675_AL_.jpg",
  run_time: 80
)
bill.specials.create(
  name: "Bill Burr: You People Are All the Same",
  image_url: "https://m.media-amazon.com/images/M/MV5BMjAyZTI1NjMtNjQ3OC00MDhhLTkxMDgtMDVmMThhNjE5M2NkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg",
  run_time: 69
)

pete = Comedian.find_by(name: "Pete Holmes")
pete.specials.create(
  name: "Pete Holmes: Faces and Sounds",
  image_url: "https://m.media-amazon.com/images/M/MV5BYmI3OTc0MTEtYmZmZC00Y2RjLWEwMjAtYjQwMWRlNDA3OWYwXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg",
  run_time: 57
)

hannibal = Comedian.find_by(name: "Hannibal Buress")
hannibal.specials.create(
  name: "Hannibal Buress: Comedy Camisado",
  image_url: "https://m.media-amazon.com/images/M/MV5BNDQ0ZDA3NTQtNzI3NC00Y2NiLWI0ZTctN2RjNDYxNWEyODY4XkEyXkFqcGdeQXVyNTQwMDk4NDM@._V1_SY1000_CR0,0,674,1000_AL_.jpg",
  run_time: 83
)
hannibal.specials.create(
  name: "Hannibal Buress: Animal Furnace",
  image_url: "https://m.media-amazon.com/images/M/MV5BMjI4OTUxMTg1M15BMl5BanBnXkFtZTgwNDI1NjA2MDE@._V1_.jpg",
  run_time: 65
)

david = Comedian.find_by(name: "David Cross")
david.specials.create(
  name: "David Cross: Making America Great Again",
  image_url: "https://m.media-amazon.com/images/M/MV5BZDc2YTVhYTEtZGM4Yi00N2U5LThmZTktMjQwNGY4OWM5NDQ3XkEyXkFqcGdeQXVyMjUzNTU5NjY@._V1_.jpg",
  run_time: 74
)
david.specials.create(
  name: "David Cross: Bigger & Blackerer",
  image_url: "https://m.media-amazon.com/images/M/MV5BMjA0NjM3ODgxN15BMl5BanBnXkFtZTgwNzE3NDA2MDE@._V1_.jpg",
  run_time: 65
)
david.specials.create(
  name: "David Cross: The Pride Is Back",
  image_url: "https://m.media-amazon.com/images/M/MV5BODcwMjMxOTU4OF5BMl5BanBnXkFtZTgwODE0MTc4MTE@._V1_.jpg",
  run_time: 55
)

zach = Comedian.find_by(name: "Zach Galifianakis")
zach.specials.create(
  name: "Zach Galifianakis: Live at the Purple Onion",
  image_url: "https://m.media-amazon.com/images/M/MV5BMTcyMDg1MTEwMl5BMl5BanBnXkFtZTcwMjExMTY0MQ@@._V1_.jpg",
  run_time: 90
)
zach.specials.create(
  name: "Zach Galifianakis: Look Who It Isn't",
  image_url: "https://m.media-amazon.com/images/M/MV5BNzVkMzU1YmYtYTE4ZS00NThjLWI4YWYtYTNhMmRiZGFkNzU0XkEyXkFqcGdeQXVyNTMyODQ1Njk@._V1_.jpg",
  run_time: 68
)

john = Comedian.find_by(name: "John Mulaney")
john.specials.create(
  name: "John Mulaney: Kid Gorgeous at Radio City",
  image_url: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg",
  run_time: 65
)
john.specials.create(
  name: "John Mulaney: The Comeback Kid",
  image_url: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg",
  run_time: 62
)
john.specials.create(
  name: "John Mulaney: New in Town",
  image_url: "https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_.jpg",
  run_time: 60
)

anthony = Comedian.find_by(name: "Anthony Jeselnik")
anthony.specials.create(
  name: "Anthony Jeselnik: Thoughts and Prayers",
  image_url: "https://m.media-amazon.com/images/M/MV5BYzA1ZGI0ZDYtYWVkNi00ZWY3LWE5MzUtZWIwZmI0NTRhNmJiXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg",
  run_time: 59
)
anthony.specials.create(
  name: "Anthony Jeselnik: Caligula",
  image_url: "https://m.media-amazon.com/images/M/MV5BYWExMjQ2NGQtNWYxMS00YTA4LTk1ZjYtN2RlMWI1M2ViZWQ0XkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_SY1000_CR0,0,715,1000_AL_.jpg",
  run_time: 59
)

aziz = Comedian.find_by(name: "Aziz Ansari")
aziz.specials.create(
  name: "Aziz Ansari Live in Madison Square Garden",
  image_url: "https://m.media-amazon.com/images/M/MV5BZDI2OGFlZmYtZDVjYy00ODU3LTg2MWMtOTNmYWYyNTljOTE4XkEyXkFqcGdeQXVyNDg1NjA2OA@@._V1_.jpg",
  run_time: 58
)
aziz.specials.create(
  name: "Aziz Ansari: Buried Alive",
  image_url: "https://m.media-amazon.com/images/M/MV5BNzAyNTYyODI5Nl5BMl5BanBnXkFtZTgwMzkwMzY1MDE@._V1_SY1000_CR0,0,679,1000_AL_.jpg",
  run_time: 80
)
aziz.specials.create(
  name: "Aziz Ansari: Dangerously Delicious",
  image_url: "https://m.media-amazon.com/images/M/MV5BYzYzNzlhYTEtYTdkNS00NDdiLWE1N2MtM2ZlOTQzMjU5OTg5XkEyXkFqcGdeQXVyMTIxMDUyOTI@._V1_.jpg",
  run_time: 61
)

mike = Comedian.find_by(name: "Mike Birbiglia")
mike.specials.create(
  name: "Mike Birbiglia: Thank God for Jokes",
  image_url: "https://m.media-amazon.com/images/M/MV5BNjM1NjNjOTUtMzk3Yi00NzZmLTg3NTQtZjE0N2U1MTYyZTViXkEyXkFqcGdeQXVyNDQyODU5MDQ@._V1_.jpg",
  run_time: 60
)
mike.specials.create(
  name: "Mike Birbiglia: My Girlfriend's Boyfriend",
  image_url: "https://m.media-amazon.com/images/M/MV5BMTU0OTMzNDUyNV5BMl5BanBnXkFtZTgwMDYxNjkyMjE@._V1_.jpg",
  run_time: 65
)

jerry = Comedian.find_by(name: "Jerry Seinfeld")
jerry.specials.create(
  name: "Jerry Before Seinfeld",
  image_url: "https://m.media-amazon.com/images/M/MV5BOTc2N2I0Y2UtOTgyYy00MTU3LTk1YzItZGIwMDcxY2JkMGQzXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_.jpg",
  run_time: 62
)
jerry.specials.create(
  name: "Jerry Seinfeld: 'I'm Telling You for the Last Time",
  image_url: "https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_.jpg",
  run_time: 75
)
jerry.specials.create(
  name: "Jerry Seinfeld: Stand-Up Confidential",
  image_url: "https://m.media-amazon.com/images/M/MV5BYjZlNTgxMzYtZjc1ZS00OTQzLThiYWYtMTEzYjNmNDM1NmFkXkEyXkFqcGdeQXVyMzU0NzkwMDg@._V1_.jpg",
  run_time: 55
)



p "Created #{Special.count} specials"
