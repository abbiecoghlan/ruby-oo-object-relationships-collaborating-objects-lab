require "pry" 

class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.new_by_filename(filename)
        file = filename.split(" - ")
        newsong = Song.new(file[1])
        newsong.artist_name = file[0]
        newsong
    end 

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end 


end 