
class Artist

  @@all = []

  attr_accessor :name

    def initialize(name)
      @name = name
      @@all << self
    end

    def save
      @@all << self
    end

    def add_song(song)
      song.artist=self
    end

    def songs
      Song.all.select do |song|
        song.artist == self
      end
    end

    def print_songs
      self.songs.each {|song| puts song.name}
    end

    def self.find_or_create_by_name(name)
      if !self.all.find {|artist| artist.name == name}
        Artist.new(name)
      else
        self.all.find {|artist| artist.name == name}
      end
    end

    def self.all
      @@all
    end


end
