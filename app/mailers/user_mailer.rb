class UserMailer < ActionMailer::Base
	default :from => "tripp@autopilot.marketing"
	default :to => "info@autopilot.marketing"

	def registration_confirmation(user)
		#MAIL TO USER
                #mail(:to => user.email, :subject => ENV["MAIL_SUBJECT"])

		#OUR MAIL
		mail( :to  => "tripp@autopilot.marketing", :smtp_envelope_to => "tripp@autopilot.marketing", :subject => "New Lead", :body => user.email)
	end
end
