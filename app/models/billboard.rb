class Billboard < ApplicationRecord
  has_many :artists
  has_many :songs
  # uniqueness: true 
  # , optional: true
end
