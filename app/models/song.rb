class Song < ApplicationRecord
    belongs_to :artist
    belongs_to :genre
end

# A song belongs to an artist

# A song belongs to a genre

# A genre has many songs

# An artist has many songs