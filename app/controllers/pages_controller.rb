class PagesController < ApplicationController

  def home
    @top_powers = Rental.group(:power_id).count.order(:desc).limit(10)
    #Need to test this code with seed file
  end

  def human_profile

  end
  #should I have one profile and screen in the view for each kind of user.
  #or should I have a conditional in the nav link that send the user to the right profile.
  def hero_profile


  end

end
