class RomanticDatesController < ApplicationController

  before_action :find_romantic_date, only: [:show, :edit, :update, :destroy]

  def index
    @romanticdates = RomanticDate.all
  end

  def show
  end

  def new
    @romanticdate = RomanticDate.new
  end

  def create
    date = RomanticDate.create(date_params)
    redirect_to romantic_date_path(date)
  end

  def edit
  end

  def update
    @romanticdate.update(date_params)
    redirect_to romantic_date_path(@romanticdate)
  end

  def destroy
    @romanticdate.destroy
    redirect_to romantic_dates_path
  end


  private

  def date_params
    params.require(:romantic_date).permit(:initiator_id, :acceptor_id, :activity_id, :outcome)
  end

  def find_romantic_date
    @romanticdate = RomanticDate.find(params[:id])
  end
end
