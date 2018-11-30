class Billboard < ApplicationRecord
  has_many :artists
  has_many :songs
  # , optional: true
end
