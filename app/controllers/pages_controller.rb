class PagesController < ApplicationController

  def profile
  	if current_user.is_hero
  	   render "hero"
  	 else
  	   render "human"
  	end
  end

  def home
    @top_powers = Rental.group(:power_id).count.order(:desc).limit(10)
  end

end


