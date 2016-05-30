class UserMailer < ActionMailer::Base
	default :from => ENV["FROM_EMAIL"]

	def registration_confirmation(user)
		#MAIL TO USER
                mail(:to => user.email, :subject => ENV["MAIL_SUBJECT"])

		#OUR MAIL
		mail(:to => "info@autopilot.marketing", :subject => "New Lead", :body => "")
	end
end
