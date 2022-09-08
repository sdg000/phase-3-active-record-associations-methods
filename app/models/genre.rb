class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    # artist_names = []
    # self.artists.map do |item|
    #   item.name
    # end

    self.artists.pluck(:name)
    # Pluck returns an Array of attribute values type-casted to match the plucked column names,
  end
end
