class VisitsController < ApplicationController
  def index
    @visits = Visit.all
    render json: @visits
  end
end
