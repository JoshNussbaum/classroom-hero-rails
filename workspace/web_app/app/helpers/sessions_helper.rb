module SessionsHelper

	def log_in(user)
		session[:user_id] = user.id
	end

	def log_out
		session.delete(:user_id)
		@current_user = nil
	end

	def current_user
		if @current_user.nil?
			@current_user = User.find_by(:id => session[:user_id])
		else
			@current_user
		end
	end	

	def is_logged_in
		if session[:user_id].nil?
			return false
		else
			return true
		end
	end
	
end
