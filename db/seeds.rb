# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "jose@test.com", date_of_birth: "20/02/2010", gender: "M")
Mood.create(user_id: "1", mood_type: "happy", mood_intensity: "high")
JournalEntry.create(user_id: "1", title: "Today is the day", content: "Starting today I will be better for myself and my family.")
