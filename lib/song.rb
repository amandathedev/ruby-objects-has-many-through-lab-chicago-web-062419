require "pry"

class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  # Be consistent
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end
end

# Join table

Driftin = Song.new("Driftin", "GRiZ", "Funk")
# p Driftin.name

Hot_Like_Sauce = Song.new("Hot Like Sauce", "Pretty Lights", "Electro")
# p Hot_Like_Sauce.name

Good_Times_Roll = Song.new("Good Times Roll", "GRiZ", "Funk")


p Song.all