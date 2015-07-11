class VisitsController < ApplicationController

  def index
    @visits = Visit.all
    render json: @visits
  end

  def show
    @visit = Visit.find(params[:id])
    render json: @visit
  end

  def create
    @visit = current_user.visits.new(visits_params)
    if @visit.save
      render json: @visit, status: :created, location: visits_url
    else
      render json: @visit.errors, status: :unprocessable_entity
  end


end
