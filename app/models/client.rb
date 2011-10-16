class Client < ActiveRecord::Base
		has_many :feedbacks
		has_many :subscriptions
		has_many :appt_requests
end
