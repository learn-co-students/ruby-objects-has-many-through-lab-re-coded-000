class Song
  attr_accessor :name, :genre, :artist
def initialize(name,genre)
  @name=name
  @genre=genre
  @songs=[]
  genre.add_song(self)
end
def songs
  @songs
end
def genre
  @genre
end
end
