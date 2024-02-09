# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  #one to many
  def filmography


    matching_movies = Movie.where({ :director_id => self.id })
    
    return matching_movies

  end
end

# Three 1 to Many associations
# - Director => Movie 
# - Movie => Character
# - Actor => Character
#
# Try define
#  [X]   Director#filmography
#  [X]   Movie#director
#  [X]   Movie#characters
#  [X]   Character#movie
#  []   Actor#characters  
#  [X]   Character#actor
#
