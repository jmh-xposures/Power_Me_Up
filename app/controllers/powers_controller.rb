class PowersController < ApplicationController

  before_action :set_power, only: [:show, :destroy]

  # GET /powers
  def index
     if params[:query].present?
      @powers = Power.general_search(params[:query])
    else
      @powers = Power.all
    end
  end

  # GET /powers/1
  def show
    @rental = Rental.new 
  end

  # GET /powers/new
  def new
    @power = Power.new
  end

  # POST /powers
  def create
    @power = Power.new(power_params)
    @power.user = current_user
    if @power.save
      redirect_to @power, notice: 'Power was successfully created!'
    else
      render :new
    end
  end

  # # PATCH/PUT /powers/1
  # def update
  #   if @power.update(power_params)
  #     redirect_to @power, notice: 'Power was successfully updated!'
  #   else
  #     render :edit
  #   end
  # end

  # DELETE /powers/1
  def destroy
    @power.destroy
    redirect_to powers_url, notice: 'Power was succefully destroyed!'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power
      @power = Power.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def power_params
      params.require(:power).permit(:name, :short_description, :price, :long_description, :photo)
    end
end
