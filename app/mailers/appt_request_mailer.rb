class ApptRequestMailer < ActionMailer::Base
  default :from => "no-reply@appointmentor.com"

   def notify_email(appt_request)
  	@appt_request = appt_request
  	client = appt_request.client
  	mail(:to => client.email, :subject => "[Appointment Request]")
  end

end
