class NotificationsController < ProtectedController

  skip_before_action :verify_authenticity_token

  def index
    @notifications = Notification.all
    render json: @notifications
  end

  def show
    @notification = current_user.visits.find(params[:visit_id]).notifications.first
    render json: @notification
  end

  def create
    @notification = current_user.visits.find(params[:visit_id]).notifications.new(notification_params)
    if @notification.save
      notify
      render json: @notification, status: :created
    else
      render json: @notification.errors, status: :unprocessable_entity
    end
  end

  def notify
    client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
    @group = Group.find(current_user.group)
    message = client.messages.create from: current_user.phone_number, to: @group.manager_phone, body: notification_params[:message]
  end

  private
  def notification_params
    params.require(:notification).permit(:message)
  end

end

#current_user.group.manager_phone
