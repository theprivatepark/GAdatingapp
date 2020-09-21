class ActivitiesController < ApplicationController

  def show
    @activity = Activity.find(params[:id])
  end

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    activity = Activity.create(act_params)
    redirect_to activity_path(activity)
  end

  private 

  def act_params
    params.require(:activity).permit(:name, :location, :description, :has_meal, :has_alcohol)
  end

end
