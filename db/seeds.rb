require 'faker'



20.times do
    Song.create(title: Faker::FunnyName.two_word_name, released: [true, false].sample, release_year: Faker::Number.between(from: 1980, to: 2000), artist_name: Faker::Music.band, genre: Faker::Music.genre)
end
puts "done seeding"