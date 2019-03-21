class Artist 
  attr_accessor :name, :songs
  @@songs = []
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self
    @@songs << song 
  end
  
  def add_song_by_name(title)
    song = Song.new(title, self)
  end
 
  def songs
    Song.all.select { |song| song.artist == self }
  end
  
  def self.song_count
    Song.all.length 
  end 
  
end 