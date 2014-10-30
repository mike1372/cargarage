class User < ActiveRecord::Base
	has_many :cars
	has_many :garages
	has_secure_password
	validates :username, :uniqueness => true
	validates :first_name, :last_name, :email, :username, :password_confirmation, :presence => true, :on => :create
end
