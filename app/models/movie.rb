class Movie < ActiveRecord::Base
    def self.get_rating
        self.select(:rating).uniq.map { |movie|
            movie.rating
        }
    end
end
