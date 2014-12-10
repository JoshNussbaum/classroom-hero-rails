class StudentUser < ActiveRecord::Base
	has_one :user, :as => :user_category
	validates :totalcoins, numericality: { greater_than_or_equal_to: 0 }
	validates :currentcoins, numericality: { greater_than_or_equal_to: 0 }
	validates :lvl, numericality: { greater_than_or_equal_to: 0 }
	validates :progress, numericality: { greater_than_or_equal_to: 0 }
	

end
