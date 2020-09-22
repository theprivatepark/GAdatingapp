class ActivitiesController < ApplicationController

  before_action :find_activity, only: [:show, :edit, :update, :destroy]

  def show
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

  def edit
  end

  def update
    @activity.update(act_params)
    redirect_to activity_path(@activity)
  end

  def destroy
    @activity.destroy
    redirect_to activities_path
  end

  private 

  def act_params
    params.require(:activity).permit(:name, :location, :description, :has_meal, :has_alcohol)
  end

  def find_activity
  @activity = Activity.find(params[:id])
  end

end
