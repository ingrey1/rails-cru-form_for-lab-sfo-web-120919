class Artist < ApplicationRecord
    has_many :songs
    has_many :genres, through: :songs
end


# A song belongs to an artist

# A song belongs to a genre

# A genre has many songs

# An artist has many songs