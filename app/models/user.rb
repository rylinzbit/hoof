class User < ActiveRecord::Base
  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :f_name, :l_name, :email, :birthday, :fitness_goals, :lifestyle, :organization, :presence => true
  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end