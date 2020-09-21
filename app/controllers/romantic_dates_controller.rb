class RomanticDatesController < ApplicationController

  def index
    @romanticdates = RomanticDate.all
  end

  def show
    @romanticdate = RomanticDate.find(params[:id])
  end
  
end
