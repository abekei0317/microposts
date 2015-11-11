class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: {with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :about , length: { maximum: 255 } , presence: true, on: :update
  validates :location , length: { maximum: 30 } , presence: true, on: :update

  has_secure_password
end
