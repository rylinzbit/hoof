class User < ActiveRecord::Base
  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, :email, :birthdate, :fitness_goals, :lifestyle, :organization, :presence => true
  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
