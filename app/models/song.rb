class Song < ApplicationRecord
  belongs_to :billboard, optional: true 
  belongs_to :artist

  def self.by_rank
    order(rank: :asc)
  end
end
