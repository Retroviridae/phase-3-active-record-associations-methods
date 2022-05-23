class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    # self.songs.map {|song| song[:artist_id]}.uniq.length
    self.artists.count
  end

  def all_artist_names
  #   artist_IDs= self.songs.map {|song| song[:artist_id]}.uniq
  #   artist_IDs.map {|artistID| Artist.all[artistID-1][:name]}
    self.artists.map {|artist| artist[:name]}
  end
end
