50.times do
  artist = Artist.create(name: Faker::Music.band, billboard_id: 39) 
  # b = Billboard.create(name: Faker::Hobbit.character)

50.times do
    Song.create(
      name: Faker::Vehicle.model,
      rank: rand(10),
      artist_id: artist.id,
      billboard_id: 39
    )
  end 
end 

# Billboard.create(name: "Top100")
# Billboard.create(name: "Top50")