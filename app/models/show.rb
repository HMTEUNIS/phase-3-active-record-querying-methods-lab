class Show < ActiveRecord::Base
    def self.highest_rating
    self.maximum(:rating)    
    end
    def self.most_popular_show
    r = self.maximum(:rating)
    self.where(rating: r)[0]
    end
    def self.lowest_rating
    self.minimum(:rating)
    end
    def self.least_popular_show
        e = self.minimum(:rating)
    self.where(rating: e)[0]
    end
    def self.ratings_sum
        self.sum(:rating)
    end
   def self.popular_shows
   self.where("rating > 5")
    end
    def self.shows_by_alphabetical_order
      r =   self.map do |show|
            show.name
            r.order
        end
    end
end