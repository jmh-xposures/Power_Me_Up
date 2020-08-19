class RentalsController < ApplicationController

  def new
    @rental = Rental.new
    @power = Power.find(params[:power_id])
  end

  def create
    @rental = Rental.new(rental_params)
    @power = Power.find(params[:power_id])
    @rental.power_id = @power.id
    @rental.user = current_user

    if @rental.save
      flash.notice = "Thank you for booking this power!"
      # Need to redirect
    else
      render :new
    end
  end

  def update
    @rental = Rental.find(params[:id])
    #should I have two methods for each button (accept or reject) instead of this method
  end

  def index
    @pending_rentals = Rental.joins(:power).where(status: nil , powers: {user: current_user})
  end

  def approval
  end

  private

  def rental_params
    params.require(:rental).permit(:comment)
  end
end
