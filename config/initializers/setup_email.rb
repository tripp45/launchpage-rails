require 'development_mail_interceptor'

ActionMailer::Base.smtp_settings = {
 :address              => "smtp.office365.com",
 :port                 => 587,
 :domain               => "autopilot.marketing",
 :authenticaton        => "plain",
 :enable_starttls_auto => true
}
#config.action_mailer.delivery_method = :smtp
#config.action_mailer.raise_delivery_errors = true
#config.action_mailer.perform_deliveries = true

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if
Rails.env.development?
