class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def profile
  	if current_user.is_hero
  	   render "hero"
  	else
  	   render "human"
  	end
  end

  def home
    @top_powers = Power.all.to_a.sort_by { |power| - power.rentals.count }.first(10)
  end
end
