class TeacherUser < ActiveRecord::Base
	has_one :user, :as => :user_category
end
