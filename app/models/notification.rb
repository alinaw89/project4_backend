class Notification < ActiveRecord::Base
  belongs_to :visit

  after_initialize do
    self.responded = false
  end
end
