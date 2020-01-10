class Genre < ApplicationRecord
    has_many :songs
    has_many :artists, through: :songs
end

# A song belongs to an artist

# A song belongs to a genre

# A genre has many songs

# An artist has many songs