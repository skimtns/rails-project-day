class Billboard < ApplicationRecord
  has_many :artists, dependent: :destroy
  has_many :songs, dependent: :destroy
  validates_uniqueness_of :name
  # uniqueness: true 
  # , optional: true
end
