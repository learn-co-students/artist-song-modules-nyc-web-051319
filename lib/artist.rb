require 'pry'

class Artist
  attr_accessor :name
  # attr_reader :songs need to  keep this abstract so comment it out


  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods


def initialize #so it'll inherit the behaivor from the memorable :: instance methods & still collect songs bc no way to put that down in the code 
  super
  @songs = []

end

  @@artists = []

  # def initialize
  #   @@artists << self
  #   @songs = []
  # end

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  # def self.all
  #   @@artists
  # end

  # def self.reset_all
  #   self.all.clear
  # end
  #
  # def self.count
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
