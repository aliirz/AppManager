class FeedbackMailer < ActionMailer::Base
  default :from => "no-reply@appointmentor.com"

  def notify_email(feedback)
  	@feedback = feedback
  	client = feedback.client
  	mail(:to => client.email, :subject => "[Feedback]")
  end

end
