10.times do
  artist = Artist.create(name: Faker::Music.band, billboard_id: 1) 
  # b = Billboard.create(name: Faker::Hobbit.character)

# 10.times do
    Song.create(
      name: Faker::Music.album,
      rank: rand(10),
      artist_id: artist.id,
      billboard_id: 1
    )
  # end 
end 

50.times do
  artist = Artist.create(name: Faker::Music.band, billboard_id: 2) 
  # b = Billboard.create(name: Faker::Hobbit.character)

# 50.times do
    Song.create(
      name: Faker::Music.album,
      rank: rand(50),
      artist_id: artist.id,
      billboard_id: 2
    )
  # end 
end 

# Billboard.create(name: "Top 10")
# Billboard.create(name: "Top 50")