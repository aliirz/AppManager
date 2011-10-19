class Client < ActiveRecord::Base
	has_many :feedbacks
	has_many :appt_requests
	has_many :subscriptions
end
