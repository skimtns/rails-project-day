class Billboard < ApplicationRecord
  has_many :artists
  has_many :songs
  validates_uniqueness_of :name
  # uniqueness: true 
  # , optional: true
end
