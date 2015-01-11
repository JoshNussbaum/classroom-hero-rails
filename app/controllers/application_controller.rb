class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	@user = User.new
	include SessionsHelper 
end
