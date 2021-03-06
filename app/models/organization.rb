class Organization < ActiveRecord::Base
  has_many :programs

  def friendliness_ratings
    programs.collect{|p| p.friendliness_rating}.uniq
  end
end
