class User < ActiveRecord::Base
  # belongs_to :manager, :class_name => 'User'
  # has_many :employees, :class_name => 'User',  :foreign_key => :manager_id
  belongs_to :group
  has_many :visits

  has_secure_password

  before_create :set_token
  after_find :fix_up_token

  validates :email, uniqueness: true

  def authenticate_with_new_token(password)
    authenticate_without_new_token(password) && new_token
  end

  alias_method_chain :authenticate, :new_token

  private
  # validate that token doesnt exist
  def set_token
    self.token = SecureRandom.hex(16)
  end

  # unconditionatlly create and set a new token
  def new_token
    update_columns(token: set_token, updated_at: Time.current)
  end

  # expire old token
  def fix_up_token
    new_token if updated_at < 1.day.ago
  end
end
