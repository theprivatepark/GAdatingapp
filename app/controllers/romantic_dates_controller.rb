class RomanticDatesController < ApplicationController

  def index
    @romanticdates = RomanticDate.all
  end

  def show
    @romanticdate = RomanticDate.find(params[:id])
  end

  def new
    @romanticdate = RomanticDate.new
  end

  def create
    date = RomanticDate.create(date_params)
    redirect_to romantic_date_path(date)
  end

  def edit
    @romanticdate = RomanticDate.find(params[:id])
  end

  def update
    @romanticdate = RomanticDate.find(params[:id])
    @romanticdate.update(date_params)
    redirect_to romantic_date_path(@romanticdate)
  end

  def destroy
    RomanticDate.destroy(params[:id])
    redirect_to romantic_dates_path
  end


  private

  def date_params
    params.require(:romantic_date).permit(:initiator_id, :acceptor_id, :activity_id, :outcome)
  end
end
