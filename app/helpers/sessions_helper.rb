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

	def user_data
		if @user_data.nil?
			if current_user.user_category_type == 'teacher'
				@user_data = TeacherUser.find_by(:id => current_user.user_category_id)
			else
				@user_data = StudentUser.find_by(:id => current_user.user_category_id)
			end
		else
			@user_data
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
