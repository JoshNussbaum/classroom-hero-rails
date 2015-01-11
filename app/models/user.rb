class User < ActiveRecord::Base
	has_secure_password
	validates :fname, presence: true
	validates :lname, presence: true
	validates :email, presence: true
	validates_format_of :email, with: /\A[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\z/
	validates :email, uniqueness: true
	validates :password, :length => { :minimum => 5 }
	validates_confirmation_of :password
	belongs_to :user_category, polymorphic: true
end
