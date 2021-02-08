class Song
    attr_accessor :name, :genre, :artist
    @@count = 0
    @@genres = []
    @@artists = [] # [brit, jay, jay]


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
        
    end

    def self.count
        @@count
    end

    def self.genres #returns array of all genres of existing(unique) songs
        @@genres.uniq
    end

    def self.artists #returns array of all artists of existing songs
        @@artists.uniq # => [b,j]
    end

    def self.genre_count #return hash - Keys are the names of each genre
        result = {}
        @@genres.each do |genre|
            if result[genre] != nil # check if genre is in hash
                result[genre] = result[genre] + 1
            else # if genre is not in hash... add it
                result[genre] = 1
            end
       end
       return result
    end
   

    def self.artist_count #return histogram for artists
        bucket = {}
        @@artists.each do |artist|
            if bucket[artist] != nil # check if artist is already in bucket
                bucket[artist] = bucket[artist] + 1
            else # artist is not in bucket
                bucket[artist] = 1
            end
        end
        return bucket
    end
    
end

# song_1(brit)
# song_2(jay)
# song_3(jay)
# # @@artists = [bj,,j]
# Song.artist_count# => {brit:1 jay: 2}





#'new' takes in three arguments?


