class Song

@@all = []

  attr_accessor :name,:artist
  # attr_reader :artist

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.new_by_filename(import)
      importdata = import.split(" - ")
      # binding.pry
      new_song = Song.new(importdata[1])
      # binding.pry
      # new_song.artist = importdata[0]
      new_song.artist = Artist.find_or_create_by_name(importdata[0])
      new_song


    end

    def self.all
      @@all
    end


end
