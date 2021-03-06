class VisitsController < ProtectedController

  # before_action :set_user

  def index
    if current_user
      @visits = current_user.visits
    else
      @visits = Visit.all
    end
    render json: @visits
  end

  # def index
  #   @visits = @user.visits
  #   render json: @visits
  # end

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

  def update
    @visit = Visit.find(params[:id])
    if @visit.update(visits_params)
      head :no_content
    else
      render json: @visit.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @visit = Visit.find(params[:id])
    # @notification = Notification.find(visit_id: params[:id])
    @visit.destroy
    # @notification.destroy
    head :no_content
  end
  # get the visit id

  private
  def visits_params
    params.require(:visit).permit(:start_of_visit, :end_of_visit, :protocol, :subject_id, :reason_for_visit, :message, :priority, :notifications)
  end

  def set_user
    @user = User.find(params[:user_id])
  end


end
