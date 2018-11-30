# 10.times do
#   artist = Artist.create(name: Faker::Music.band) 
#   b = Billboard.create(name: Faker::Hobbit.character)

#   10.times do
#     Song.create(
#       name: Faker::Vehicle.model,
#       artist_id: artist.id,
#       billboard_id: b.id
#     )
#   end 
# end 

# Billboard.create(name: "Top100")
# Billboard.create(name: "Top50")