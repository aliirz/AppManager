class SubscriptionsMailer < ActionMailer::Base
  default :from => "no-reply@appointmentor.com"

   def notify_email(subscription)
  	@subscription = subscription
  	client = subscription.client
  	mail(:to => client.email, :subject => "[Newsletter Subsciption]")
  end
end
