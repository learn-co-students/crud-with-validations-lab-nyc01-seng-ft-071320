require 'faker'

20.times do
    Song.create(title: Faker::Music::GratefulDead.song, released: [true, false].sample , release_year: Faker::Number.number(digits: 4), artist_name: Faker::Music.band, genre: Faker::Music.genre)
end
20.times do
    Song.create(title: Faker::Music::PearlJam.song, released: [true, false].sample, release_year: Faker::Number.number(digits: 4), artist_name: Faker::Music.band, genre:Faker::Music.genre)
end