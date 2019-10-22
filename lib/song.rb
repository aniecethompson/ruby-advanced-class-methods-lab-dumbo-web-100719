require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create #class constructor
    song = self.new
    self.all << song
    song
  end
  
  def self.new_by_name(title) #class constructor
    song = self.new
    song.name = title
    song
  end
  
  def self.create_by_name(title)
    
    song =self.create
    binding.pry
    song.name= title
    song
  end
 Song.create_by_name("Cool Title")
  
  def self.find_by_name(title)
    result = self.all.detect{|song| song.name == title}
    result
  end
end