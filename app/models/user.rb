class User < ActiveRecord::Base
  attr_accessible :name, :username, :password, :password_confirmation
  has_secure_password
  has_many :articles

  before_save { |user| user.username = username.downcase }
  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :username, presence: true

  validates :password, presence: true, length: { minimum: 5 }
  validates :password_confirmation, presence: true

  def feed
    Article.where("user_id = ?", id)
  end

  private
  	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end
end
