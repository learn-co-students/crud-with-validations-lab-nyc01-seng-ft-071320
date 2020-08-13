require 'faker'

30.times do 
    Song.create(title: Faker::Music::Prince.song, released: [true,false].sample, release_year: rand(1980-2010), artist_name: Faker::Games::StreetFighter.character, genre: Faker::Music.genre)
end