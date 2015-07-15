class NotificationsController < ProtectedController

  skip_before_action :verify_authenticity_token


  client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token

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
      render json: @notification, status: :created, location: notifications_url
    else
      render json: @notification.errors, status: :unprocessable_entity
    end
  end

  private
  def notification_params
    params.permit(:message)
  end

  def notify
    message = client.messages.create from: current_user.phone_number, to: current_user.group.manager_phone, body: notification_params[:message]
    render plain: message.status
  end

end
