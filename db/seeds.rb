# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..10
    Director.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
    )
    puts "Created #{i} DIRECTOR records"
end

for i in 1..30
    Movie.create(
        title: Faker::Book.title,
        release_year: Faker::Number.between(from: 1899, to: 2020),
        genre: Faker::Book.genre,
        director_id: Faker::Number.between(from: 1, to: 10)
    )
    puts "Created #{i} MOVIE records"
end

for i in 1..10
    Salary.create(
        salary: Faker::Number.between(from: 18990, to: 9999999),
        director_id: i
    )
    puts "Created #{i} SALARY records"
end