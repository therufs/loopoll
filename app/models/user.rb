class User < ActiveRecord::Base
  has_secure_password
  validates :name, :email, :password_digest, presence: true
  validates :email, uniqueness: true

  has_many :questions
  has_many :results
end
