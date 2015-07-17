class Visit < ActiveRecord::Base
  belongs_to :employee, :class_name => 'User'
  has_many :notifications, dependent: :destroy
  # after_save :send_to_twilio #after you try to save a visit, twilio is always invoked but will only send it visit status is high


  # def send_to_twilio
  #   if visit_status == 'high'
  #     twilio = TwilioAlert.new
  #     twilio.send_alert('(339)364-0657') #insert managers number
  #   end
  # end
end
