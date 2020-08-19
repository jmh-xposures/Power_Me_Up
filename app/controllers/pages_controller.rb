class PagesController < ApplicationController

  def profile
  	if current_user.is_hero 
  		@number_of_pending_rentals = Rental.joins(:power).where(status: nil , powers: {user: current_user}).count 
  	   render "hero" 
  	 else 
  	   render "human"   
  	end	

  end

  def home 
  end

end


