class MP3Importer

    attr_reader :path

    def initialize(path)
        @path = path 
    end 

    def files
       
        @files = Dir.entries(@path).select {|parsedfile| parsedfile.end_with?(".mp3")}
       
    end 

    def import
    files.each{|filename| Song.new_by_filename(filename)}
    end 
end 