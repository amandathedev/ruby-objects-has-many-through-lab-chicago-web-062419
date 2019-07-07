require "pry"

class Genre
  attr_accessor :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

  # def self.most_songs
  #   Song.all.max_by do |genre|
  #     binding.pry
  #     song.genre.count
  #   end
  #   p most_songs
  # end


end

Funk = Genre.new("Funk")
# p Funk.name
Electro = Genre.new("Electro")
# p Genre.most_songs
p Genre.all
