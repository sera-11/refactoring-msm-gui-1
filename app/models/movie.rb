# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  #many to one 
  def director
    my_id = self.director_id

    matching_records = Director.where({:id => my_id })
    the_director = matching_records.at(0)

    return the_director
  end

  def characters
    my_id = self.id

    matching_records = Character.where(:movie_id => my_id )

    return matching_records
  end

  
end
