# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chart_array = [nil, 9, 10, 11]
50.times do
    Song.create(artist_id: 3, title: Faker::Movies::GratefulDead.song, genre: "jamband", chart_id: chart_array.sample)
end
50.times do
    Song.create(artist_id: 4, title: Faker::Music::Phish.song, genre: "jamband", chart_id: chart_array.sample)
end
50.times do
    Song.create(artist_id: 5, title: Faker::Music::UmphreysMcgee.song, genre: "jamband", chart_id: chart_array.sample)
end

