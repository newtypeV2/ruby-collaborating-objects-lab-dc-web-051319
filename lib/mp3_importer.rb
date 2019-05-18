class MP3Importer

  attr_reader :path
  attr_accessor :songs

  def initialize(path)
    @path = path
  end

  def files
    fileArray=Dir[self.path+"/*.mp3"]
      songs = fileArray.collect do |songtitle|
        songtitle[21..]
      end
  end

  def import
    self.files.each {|x| Song.new_by_filename(x) }
  end

end
