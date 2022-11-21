class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates_presence_of :password
  enum role: %w(default admin)
  has_secure_password
end
