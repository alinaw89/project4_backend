class MembershipsController < ApplicationController
  def index
    @memberships = Membership.all
    render json: @memberships
  end

  def show
    @membership = Membership.find(params[:id])
    render json: @membership
  end

  def create
    @membership = current_user.memberships.new(memberships_params)
    if @membership.save
      render json: @membership, status: :created, location: memberships_url
    else
      render json: @membership.errors, status: :unprocessable_entity
    end
  end

  def update
    @membership = Membership.find(params[:id])
    if @membership(memberships_params)
      head :no_content
    else
      render json: @membership.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @membership = Membership.find(params[:id])
    @membership.destroy
    head :no_content
  end

  private
  def membership_params
    params.permit(:role)
  end

end
