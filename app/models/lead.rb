class Lead < ActiveRecord::Base
	validates :email, :subject, :message, presence: true
end
