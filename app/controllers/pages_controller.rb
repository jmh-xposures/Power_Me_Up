class PagesController < ApplicationController
  def profile
  	if current_user.is_hero 
  	   render "hero" 
  	 else 
  	   render "human"   
  	end	
  end

  def home 
  end

  end


