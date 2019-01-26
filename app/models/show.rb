class Show < ActiveRecord::Base
  
  def Show.highest_rating 
    show = Show.maximum("rating")
    show 
  end 
  
  def Show.most_popular_show 
    show = self.highest_rating 
    Show.all.find do |i| 
      if i.rating == show 
        i 
      end 
    end 
  end 
  
  def Show.lowest_rating 
    show = Show.minimum("rating")
    show
  end 
  
  def Show.least_popular_show
    show = self.lowest_rating 
    Show.all.find do |i| 
      if i.rating == show 
        i 
      end 
    end 
  end   
  
  def Show.ratings_sum 
    Show.sum("rating")
  end 
  
  def Show.popular_shows
    Show.all.map do |i| 
      if i.rating >= 5 
        i 
      end
    end 
  end 
  
  
  
  
end 