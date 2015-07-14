class GroupsController < ProtectedController
  def index
    @groups = Group.all
    render json: @groups
  end

  def show
    @group = Group.find(params[:id])
    render json: @group
  end

  def create
    @group = current_user.groups.new(groups_params)
    if @group.save
      render json: @group, status: :created, location: groups_url
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # def update
  #   @group = Group.find(params[:id])
  #   if @group(groups_params)
  #     head :no_content
  #   else
  #     render json: @group.errors, status: :unprocessable_entity
  #   end
  # end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    head :no_content
  end

  private
  def groups_params
    params.permit(:name)
  end

end
